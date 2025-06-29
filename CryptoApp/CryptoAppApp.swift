//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by HarrisShao on 6/27/25.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    
    @StateObject private  var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Home()
                    .toolbar(.hidden, for: .navigationBar)
//                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
