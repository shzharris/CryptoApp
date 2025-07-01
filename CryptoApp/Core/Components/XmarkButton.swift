//
//  XmarkButton.swift
//  CryptoApp
//
//  Created by HarrisShao on 7/1/25.
//

import SwiftUI

struct XmarkButton: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}
