//
//  Coin.swift
//  Api usage examples
//
//  Created by abdullah's Ventura on 2.06.2023.
//

import Foundation

struct Coin: Codable {
    let id: String
    let rank: String
    let symbol: String
    let name: String
    let supply: String
    let maxSupply: String?
    let marketCapUsd: String?
    let volumeUsd24Hr: String?
    let priceUsd: String
    let changePercent24Hr: String?
    let vwap24Hr: String?
    let explorer: String?
}
