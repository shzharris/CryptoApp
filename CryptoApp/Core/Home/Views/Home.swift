//
//  Home.swift
//  CryptoApp
//
//  Created by HarrisShao on 6/27/25.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject private var vm: HomeViewModel
    @State private var showPortfolio: Bool = false

    var body: some View {

        ZStack {
            Color.theme.background.ignoresSafeArea()
            VStack {
                homeHeader
                
                HomeStats(showPortfolio: $showPortfolio)
                
                SearchBar(searchText: $vm.searchText)
                
                columnTitles
                
                if !showPortfolio {
                    allCoinsList
                    .transition(.move(edge: .leading))
                }
                
                if showPortfolio {
                    portfolioCoinsList
                        .transition(.move(edge: .trailing))
                }
                
                Spacer(minLength: 0)
            }
        }

    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Home()
                .toolbar(.hidden, for: .navigationBar)
//                .navigationBarHidden(true)
        }
        .environmentObject(dev.homeVM)
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
    
    private var allCoinsList : some View {
        List {
            ForEach(vm.allCoins) {coin in
                CoinRow(coin: coin, showHoldingColumn: false)
                    .listRowInsets(.init(top:10, leading: 0, bottom: 10, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private var portfolioCoinsList : some View {
        List {
            ForEach(vm.porfolioCoins) {coin in
                CoinRow(coin: coin, showHoldingColumn: false)
                    .listRowInsets(.init(top:10, leading: 0, bottom: 10, trailing: 10))
            }
        }
        .listStyle(PlainListStyle())
    }
    
    private var columnTitles: some View {
        HStack {
            Text("Coin")
            Spacer()
            if showPortfolio {
                Text("Holdings")
            }
            Text("Price")
                .frame(width: UIScreen.main.bounds.width / 3, alignment: .trailing)
        }
        .font(.caption)
        .foregroundStyle(Color.theme.secondText)
        .padding(.horizontal)
    }
}
