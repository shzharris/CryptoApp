//
//  CoinImage.swift
//  CryptoApp
//
//  Created by HarrisShao on 6/29/25.
//

import SwiftUI


struct CoinImage: View {
    
    @StateObject var vm: CoinImageViewModel
    
    init (coin: CoinModel) {
        _vm = StateObject(wrappedValue: CoinImageViewModel(coin: coin))
    }
    
    var body: some View {
        
        ZStack {
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if vm.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundStyle(Color.theme.secondText)
            }
        }
        
    }
}


struct CoinImage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CoinImage(coin: dev.coin)
                .toolbar(.hidden, for: .navigationBar)
//                .navigationBarHidden(true)
        }
        .environmentObject(dev.homeVM)
    }
}
