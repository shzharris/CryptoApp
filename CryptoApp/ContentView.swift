//
//  ContentView.swift
//  CryptoApp
//
//  Created by HarrisShao on 6/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                
                Text("Accent Color")
                    .foregroundStyle(Color.theme.accent)
                
                Text("Second Text Color")
                    .foregroundStyle(Color.theme.secondText)
                
                Text("Red Color")
                    .foregroundStyle(Color.theme.red)
                Text("Green Color")
                    .foregroundStyle(Color.theme.green)
                
            }
            .font(.headline)
        }
    }
}

#Preview {
    ContentView()
}
