//
//  Service.swift
//  Api usage examples
//
//  Created by abdullah's Ventura on 2.06.2023.
//

import Foundation

class WebService{
    var coins: [Coin] = []
    
    func fetchCoins(url: URL,completion: @escaping ([Coin]?) -> Void){
        
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard let data = data, error == nil else{
                    completion(nil)
                    return
                }
                do{
                    let response = try JSONDecoder().decode(Data.self, from: data)
                    completion(response.data)
                }catch{
                    print("error decoding Json: \(error)")
                    completion([])
                }
           }.resume()
    }
}
