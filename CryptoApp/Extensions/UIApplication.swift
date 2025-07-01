//
//  UIApp.swift
//  CryptoApp
//
//  Created by HarrisShao on 6/29/25.
//

import Foundation

import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from:nil, for: nil)
    }
}
