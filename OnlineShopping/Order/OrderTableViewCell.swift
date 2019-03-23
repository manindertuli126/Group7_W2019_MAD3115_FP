//
//  OrderTableViewCell.swift
//  OnlineShopping
//
//  Created by Maninder Singh on 2019-03-23.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class OrderTableViewCell: UITableViewCell {

    @IBOutlet weak var orderIdLbl: UILabel!
    @IBOutlet weak var shippingLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func OrderDetailsBtn(_ sender: Any) {
    }
}
