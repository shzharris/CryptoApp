//
//  CircleButton.swift
//  CryptoApp
//
//  Created by HarrisShao on 6/27/25.
//

import SwiftUI

struct CircleButton: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundStyle(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundStyle(Color.theme.background)
            )
            .shadow(
                color: Color.theme.accent.opacity(0.25),
                radius: 10, x: 0, y: 0
            )
    }
}

struct CircleButton_Previews: PreviewProvider { // Use struct PreviewProvider
    static var previews: some View {
        Group {
            CircleButton(iconName: "info")
                .padding()
                .previewLayout(.sizeThatFits)
            
            CircleButton(iconName: "plus")
                .padding()
                .previewLayout(.sizeThatFits)
                .colorScheme(.dark)
        }
        
    }
}
