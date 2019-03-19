//
//  ItemDetailsViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-14.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class ItemDetailsViewController: UIViewController {

    @IBOutlet weak var TitleBarAdded: UINavigationItem!
    var firstImage : String!
    var secondImage : String!
    
    @IBOutlet weak var ItemDetailsPgImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ItemDetailsPgImage.image = UIImage(named: firstImage)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add To Cart", style: .done, target: self, action: #selector(addItemToCart))
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ItemDetailPageChoosePic(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex{
        case 0:
            ItemDetailsPgImage.image = UIImage(named: firstImage)
        case 1:
            ItemDetailsPgImage.image = UIImage(named: secondImage)
        default:
            print("Invalid")
        }
    }
    
    @objc func addItemToCart(sender: Any){
       let VC = UIStoryboard(name: "Main", bundle: nil)
       let addToCartVC = VC.instantiateViewController(withIdentifier: "addToCartVC") as! AddToCartViewController
        self.navigationController?.pushViewController(addToCartVC, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
