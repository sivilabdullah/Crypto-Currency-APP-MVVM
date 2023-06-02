//
//  ViewController.swift
//  Api usage examples
//
//  Created by abdullah's Ventura on 2.06.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    private var coinListViewModel : CoinListViewModel!
    @IBOutlet weak var tableView: UITableView!
    var url = URL(string: "https://api.coincap.io/v2/assets")!
    var viewModel : CoinListViewModel = CoinListViewModel(coinList: [])
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        getData()
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.coinListViewModel == nil ? 0 : self.coinListViewModel.numberInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CoinCell
        let coinViewModel = self.coinListViewModel.cryptoAtIndex(indexPath.row)
        cell.coinNameLB.text = coinViewModel.name
        cell.coinPriceLB.text = coinViewModel.priceUsd
        return cell
    }
    
  
    
    func getData(){
        WebService().fetchCoins(url: url) { (coin) in
            if let coin = coin {
                self.coinListViewModel = CoinListViewModel(coinList: coin)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            }
            
        }
    }
}

