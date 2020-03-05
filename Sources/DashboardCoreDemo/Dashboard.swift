//
//  File.swift
//  
//
//  Created by Sagar C on 05/03/20.
//

import Foundation
import var CommonCrypto.CC_MD5_DIGEST_LENGTH
import func CommonCrypto.CC_MD5
import typealias CommonCrypto.CC_LONG

open class Dashboard{
    public static let `default` = Dashboard()
    
    open func convertCurrency(sellingCurr : String, buyCurrencyCountry: String)-> (String, Double){
        let conversionRate = getFxDealRate(sellCurrency: sellingCurr, buyCurrency: buyCurrencyCountry)
        let sellCurrVal = Double(sellingCurr) ?? 5000.0
        let buyingCurrencyAmt = sellCurrVal * conversionRate
        return (String(buyingCurrencyAmt), conversionRate)
    }
    
    func getFxDealRate(sellCurrency: String, buyCurrency: String) -> Double {
        let dealRate = 1.29
        return dealRate
    }
}
