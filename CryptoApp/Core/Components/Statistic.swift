//
//  Statistic.swift
//  CryptoApp
//
//  Created by HarrisShao on 7/1/25.
//

import SwiftUI

struct Statistic: View {

    let stat: StatisticModel

    var body: some View {

        VStack(alignment: .leading, spacing: 4) {
            Text(stat.title)
                .font(.caption)
                .foregroundStyle(Color.theme.secondText)
            Text(stat.value)
                .font(.headline)
                .foregroundStyle(Color.theme.accent)
            HStack {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(
                        Angle(
                            degrees: (stat.percentageChange ?? 0) >= 0 ? 0 : 180
                        )
                    )
                Text(stat.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundStyle(
                (stat.percentageChange ?? 0) >= 0
                    ? Color.theme.green : Color.theme.red
            )
            .opacity(
                stat.percentageChange == nil
                ? 0.0 : 1.0
            )
        }
    }
}

struct Statistic_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Statistic(stat: dev.stat1)
                .previewLayout(.sizeThatFits)
            Statistic(stat: dev.stat2)
                .previewLayout(.sizeThatFits)
            Statistic(stat: dev.stat3)
                .previewLayout(.sizeThatFits)

        }
        
    }
}
