//
//  Double.swift
//  CryptoApp
//
//  Created by HarrisShao on 6/27/25.
//

import Foundation

extension Double {
    
    /// Convert a Double a Currency with 2-6 decimal places
    /// ```
    ///     Convert 1234.56 to $1,234.56
    /// ```
    private var currencyFormatter2: NumberFormatter {
        let formatted = NumberFormatter()
        formatted.usesGroupingSeparator = true
        formatted.numberStyle = .currency
        formatted.locale = .current // <- default value
        formatted.currencyCode = "usd" // <- change currency
        formatted.currencySymbol = "$"
        formatted.minimumFractionDigits = 2
        formatted.maximumFractionDigits = 2
        return formatted
    }
    
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    /// Convert a Double a Currency with 2-6 decimal places
    /// ```
    ///     Convert 1234.56 to $1,234.56
    /// ```
    private var currencyFormatter6: NumberFormatter {
        let formatted = NumberFormatter()
        formatted.usesGroupingSeparator = true
        formatted.numberStyle = .currency
        formatted.locale = .current // <- default value
        formatted.currencyCode = "usd" // <- change currency
        formatted.currencySymbol = "$"
        formatted.minimumFractionDigits = 2
        formatted.maximumFractionDigits = 6
        return formatted
    }
    
    /// Convert a Double a Currency with 2-6 decimal places
    /// ```
    ///     Convert 1234.56 to "$1,234.56"
    /// ```
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    /// Convert a Double a Currency to string
    /// ```
    ///     Convert 1.23456 to "1.23"
    /// ```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}
