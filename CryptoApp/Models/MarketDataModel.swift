//
//  marketDataModel.swift
//  CryptoApp
//
//  Created by HarrisShao on 7/1/25.
//

import Foundation

// JSON DATA
/*

 URL: https://api.coingecko.com/api/v3/global
 JSON Response:
 {
     "data": {
         "active_cryptocurrencies": 17545,
         "upcoming_icos": 0,
         "ongoing_icos": 49,
         "ended_icos": 3376,
         "markets": 1298,
         "total_market_cap": {
             "btc": 31908688.272265498,
             "eth": 1387641071.0833263,
             "ltc": 39452877471.777794,
             "bch": 6493376000.960553,
             "bnb": 5229572768.578218,
             "eos": 7015732527196.829,
             "xrp": 1537005988058.748,
             "xlm": 14350102025923.545,
             "link": 257699555862.8699,
             "dot": 1019871068620.6428,
             "yfi": 679359703.2817357,
             "sol": 22779533549.65433,
             "usd": 3413034452399.317,
             "aed": 12535529458150.307,
             "ars": 4.110511643880355e+15,
             "aud": 5184761114846.516,
             "bdt": 418905906518132.3,
             "bhd": 1286795901381.4001,
             "bmd": 3413034452399.317,
             "brl": 18543016179885.49,
             "cad": 4641743920435.333,
             "chf": 2698010560690.5654,
             "clp": 3179719417233300.5,
             "cny": 24444494051529.152,
             "czk": 71549147742873.08,
             "dkk": 21612221541550.1,
             "eur": 2896659404923.563,
             "gbp": 2479685572839.486,
             "gel": 9283453710526.145,
             "hkd": 26792235125473.332,
             "huf": 1155400901032931.5,
             "idr": 5.5325474033250024e+16,
             "ils": 11493663148176.44,
             "inr": 291892303822069.8,
             "jpy": 488227183496365.3,
             "krw": 4.620594963712143e+15,
             "kwd": 1041320224461.484,
             "lkr": 1023326713654503.8,
             "mmk": 7.160546281133766e+15,
             "mxn": 63866816754656.516,
             "myr": 14315973010588.934,
             "ngn": 5.241704181650346e+15,
             "nok": 34309170464126.625,
             "nzd": 5588314895463.761,
             "php": 192215270877190.28,
             "pkr": 968448525868306.4,
             "pln": 12279910242837.863,
             "rub": 266885805865470.75,
             "sar": 12800411648966.568,
             "sek": 32243038862849.902,
             "sgd": 4337874637069.3154,
             "thb": 110752967980357.83,
             "try": 135957299065955.77,
             "twd": 99702586333824.58,
             "uah": 142618654928081.6,
             "vef": 341747139718.74365,
             "vnd": 8.918302723929936e+16,
             "zar": 60108905409945.59,
             "xdr": 2376103390243.6187,
             "xag": 94061591251.58803,
             "xau": 1022408600.5607395,
             "bits": 31908688272265.496,
             "sats": 3.19086882722655e+15
         },
         "total_volume": {
             "btc": 833144.9936193258,
             "eth": 36231705.96826133,
             "ltc": 1030125935.2631673,
             "bch": 169543907.93902922,
             "bnb": 136545643.42263877,
             "eos": 183182786510.43085,
             "xrp": 40131666748.17852,
             "xlm": 374685275646.8982,
             "link": 6728609242.50805,
             "dot": 26629125826.429726,
             "yfi": 17738276.510346275,
             "sol": 594780148.0255115,
             "usd": 89115307492.547,
             "aed": 327306265970.9263,
             "ars": 107326636811000.27,
             "aud": 135375598303.77307,
             "bdt": 10937753248744.492,
             "bhd": 33598609692.07004,
             "bmd": 89115307492.547,
             "brl": 484163465607.0079,
             "cad": 121197263766.40137,
             "chf": 70445828803.4734,
             "clp": 83023385072356.5,
             "cny": 638252743792.371,
             "czk": 1868168748620.009,
             "dkk": 564301297022.7557,
             "eur": 75632607045.46211,
             "gbp": 64745300813.79015,
             "gel": 242393636379.72787,
             "hkd": 699552935933.8066,
             "huf": 30167848584221.973,
             "idr": 1444563979475224.2,
             "ils": 300102838090.444,
             "inr": 7621391689007.29,
             "jpy": 12747751653345.562,
             "krw": 120645058446525.78,
             "kwd": 27189169431.28358,
             "lkr": 26719353708413.492,
             "mmk": 186963915119363.56,
             "mxn": 1667580885291.185,
             "myr": 373794157277.4884,
             "ngn": 136862398093978.73,
             "nok": 895822271461.5419,
             "nzd": 145912503146.3844,
             "php": 5018795798249.954,
             "pkr": 25286468501010.215,
             "pln": 320631975016.2721,
             "rub": 6968464862221.966,
             "sar": 334222415870.1155,
             "sek": 841874983341.3158,
             "sgd": 113263149709.7249,
             "thb": 2891791728133.15,
             "try": 3549884034601.9727,
             "twd": 2603263097064.5312,
             "uah": 3723813944847.476,
             "vef": 8923115739.228731,
             "vnd": 2.328594394925994e+15,
             "zar": 1569460743322.4385,
             "xdr": 62040740346.698845,
             "xag": 2455975099.146999,
             "xau": 26695381.51246738,
             "bits": 833144993619.3258,
             "sats": 83314499361932.58
         },
         "market_cap_percentage": {
             "btc": 62.321270715739495,
             "eth": 8.69903992843727,
             "usdt": 4.6215331967933215,
             "xrp": 3.8385732808024637,
             "bnb": 2.789724975992088,
             "sol": 2.3485007707701033,
             "usdc": 1.800992564712702,
             "trx": 0.7755179513532391,
             "doge": 0.7116263620074047,
             "steth": 0.6550093338549806
         },
         "market_cap_change_percentage_24h_usd": -2.659017017446173,
         "updated_at": 1751358120
     }
 }
 */

// MARK: - Welcome
struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys:String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
//        if let item = totalMarketCap.first(where: { (key, value) -> Bool in
//            return key == "usd"
//        }) {
//            return "\(item.value)"
//        }
        
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""

    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}

