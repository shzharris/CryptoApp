//
//  Home.swift
//  CryptoApp
//
//  Created by HarrisShao on 6/27/25.
//

import SwiftUI

struct Home: View {

    @State private var showPortfolio: Bool = false

    var body: some View {

        ZStack {
            Color.theme.background.ignoresSafeArea()
            VStack {
                homeHeader
                List {
                    CoinRow(coin: DeveloperPreview.instance.coin, showHoldingColumn: false)
                }
                .listStyle(PlainListStyle())
                
                Spacer(minLength: 0)
            }
        }

    }
}

#Preview {
    NavigationView {
        Home()
            .navigationBarHidden(true)
    }

}

extension Home {

    private var homeHeader: some View {

        HStack {
            CircleButton(iconName: showPortfolio ? "plus" : "info")
                .animation(.none, value: showPortfolio)
                .background(
                    CircleButtonAnimation(animate: $showPortfolio)
                )
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundStyle(Color.theme.accent)
                .animation(.none, value: showPortfolio)

            Spacer()

            CircleButton(iconName: "chevron.right")
                .rotationEffect(
                    Angle(
                        degrees: showPortfolio ? 180 : 0
                    )
                )
                .onTapGesture {
                    withAnimation(.spring) {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
