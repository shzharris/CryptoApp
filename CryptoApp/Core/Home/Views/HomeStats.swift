//
//  HomeStats.swift
//  CryptoApp
//
//  Created by HarrisShao on 7/1/25.
//

import SwiftUI

struct HomeStats: View {

    @EnvironmentObject private var vm: HomeViewModel

    @Binding var showPortfolio: Bool

    var body: some View {
        HStack {
            ForEach(vm.statistics) { stat in
                Statistic(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
        }
        .frame(
            width: UIScreen.main.bounds.width,
            alignment: showPortfolio ? .trailing : .leading
        )
    }
}
