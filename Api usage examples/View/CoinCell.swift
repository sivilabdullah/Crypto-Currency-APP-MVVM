//
//  CoinCell.swift
//  Api usage examples
//
//  Created by abdullah's Ventura on 2.06.2023.
//

import UIKit

class CoinCell: UITableViewCell {

    @IBOutlet weak var coinPriceLB: UILabel!
    @IBOutlet weak var coinNameLB: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
