//
//  StatisticModel.swift
//  CryptoApp
//
//  Created by HarrisShao on 7/1/25.
//

import Foundation
import SwiftUI

struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
}



