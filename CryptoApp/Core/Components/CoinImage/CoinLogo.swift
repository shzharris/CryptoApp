//
//  CoinLogo.swift
//  CryptoApp
//
//  Created by HarrisShao on 7/1/25.
//

import SwiftUI
let dev = DeveloperPreview.instance

struct CoinLogo: View {
    
    let coin: CoinModel
    
    var body: some View {
        VStack {
            CoinImage(coin: coin)
                .frame(width: 50, height: 50)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundStyle(Color.theme.accent)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            Text(coin.name)
                .font(.caption)
                .foregroundStyle(Color.theme.secondText)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
   CoinLogo(coin: dev.coin)
        .previewLayout(.sizeThatFits)
}
