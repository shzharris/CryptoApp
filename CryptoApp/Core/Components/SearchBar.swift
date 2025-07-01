//
//  SearchBar.swift
//  CryptoApp
//
//  Created by HarrisShao on 6/29/25.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var searchText:String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(
                    searchText.isEmpty ? Color.theme.secondText : Color.theme.accent
                )
            
            TextField("Search by name...", text: $searchText)
                .foregroundStyle(Color.theme.accent)
                .disableAutocorrection(true)
                .overlay(alignment: .trailing, content: {
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x:10)
                        .foregroundColor(Color.theme.accent)
                        .opacity(searchText.isEmpty ? 0.0 : 0.8)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        }
                })
                
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.theme.background)
                .shadow(
                    color: Color.theme.accent.opacity(0.15),
                    radius: 10, x:0, y: 0)
        )
    }
}
