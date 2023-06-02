//
//  DetailViewController.swift
//  Api usage examples
//
//  Created by abdullah's Ventura on 2.06.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var coinRank: UILabel!
    
    @IBOutlet weak var coinSymbol: UILabel!
    
    @IBOutlet weak var coinName: UILabel!
    
    @IBOutlet weak var coinSupply: UILabel!
    
    @IBOutlet weak var coinMaxSupply: UILabel!
    
    @IBOutlet weak var coinMarketCapUsd: UILabel!
    
    @IBOutlet weak var coinVolumeUsd24: UILabel!
    
    @IBOutlet weak var coinPriceUsd: UILabel!
    
    @IBOutlet weak var CoinChangePercent24: UILabel!
    
    @IBOutlet weak var coinVWap24: UILabel!
    
    @IBOutlet weak var coinExplorer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  

}
