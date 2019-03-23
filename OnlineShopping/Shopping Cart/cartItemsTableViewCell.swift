//
//  cartItemsTableViewCell.swift
//  OnlineShopping
//
//  Created by Maninder Singh on 2019-03-22.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class cartItemsTableViewCell: UITableViewCell {

    @IBOutlet weak var cartImage: UIImageView!
    @IBOutlet weak var cartName: UILabel!
    @IBOutlet weak var cartQuantity: UILabel!
    @IBOutlet weak var cartPrice: UILabel!
    @IBOutlet weak var cartSinglePrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
