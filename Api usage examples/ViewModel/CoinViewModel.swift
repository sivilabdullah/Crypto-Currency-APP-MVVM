//
//  CionViewModel.swift
//  Api usage examples
//
//  Created by abdullah's Ventura on 2.06.2023.
//

import Foundation



struct CoinViewModel{
    let coinInfo : Coin
    var id : String{
        return coinInfo.id
    }
    var rank : String{
        return coinInfo.rank
    }
    var symbol : String{
        return coinInfo.symbol
    }
    var name : String{
        return coinInfo.name
    }
    var supply : String{
        return coinInfo.supply
    }
    var maxSupply: String{
        return coinInfo.maxSupply ?? "nil"
    }
    var marketCapUsd: String{
        return coinInfo.marketCapUsd ?? "nil"
    }
    var volumeUsd24Hr: String{
        return coinInfo.volumeUsd24Hr ?? "nil"
    }
    var priceUsd: String{
        return coinInfo.priceUsd
    }
    var changePercent24Hr: String{
        return coinInfo.changePercent24Hr ?? "nil"
    }
    var vwap24Hr: String{
        return coinInfo.vwap24Hr ?? "nil"
    }
    var explorer: String{
        return coinInfo.explorer ?? "nil"
    }
}
struct CoinListViewModel{
    let coinList: [Coin]

    func numberInSection() -> Int{
        return self.coinList.count
    }
    func cryptoAtIndex(_ index: Int) -> CoinViewModel{
        let coins = self.coinList[index]
        return CoinViewModel(coinInfo: coins)
    }
}

