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
    
    /// Convert a Double to a String with K, M, Bn, Tr abbreviations.
    /// ```
    /// Convert 12 to 12.00
    /// Convert 1234 to 1.23K
    /// Convert 123456 to 123.45K
    /// Convert 12345678 to 12.34M
    /// Convert 1234567890 to 1.23Bn
    /// Convert 123456789012 to 123.45Bn
    /// Convert 12345678901234 to 12.34Tr
    /// ```
    func formattedWithAbbreviations() -> String {
        let num = abs(Double(self))
        let sign = (self < 0) ? "-" : ""

        switch num {
        case 1_000_000_000_000...:
            let formatted = num / 1_000_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Tr"
        case 1_000_000_000...:
            let formatted = num / 1_000_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)Bn"
        case 1_000_000...:
            let formatted = num / 1_000_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)M"
        case 1_000...:
            let formatted = num / 1_000
            let stringFormatted = formatted.asNumberString()
            return "\(sign)\(stringFormatted)K"
        case 0...:
            return self.asNumberString()

        default:
            return "\(sign)\(self)"
        }
    }
}
