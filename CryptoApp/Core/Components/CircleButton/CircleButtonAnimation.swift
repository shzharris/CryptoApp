//
//  CircleButtonAnimation.swift
//  CryptoApp
//
//  Created by HarrisShao on 6/27/25.
//

import SwiftUI

struct CircleButtonAnimation: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.2 : 1.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(.spring(response: 0.3, dampingFraction: 0.5), value: animate)
        
    }
}

#Preview {
    CircleButtonAnimation(animate: .constant(false))
        .foregroundStyle(.red)
        .frame(width: 100, height: 100)
}
