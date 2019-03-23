//
//  ItemDetailsViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-14.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class ItemDetailsViewController: UIViewController {

    var itemDetailObject = Products()
    var cartClass = Cart()
    var randomCartId = Int.random(in: 0...999)
    
    @IBOutlet weak var itemNameLbl: UILabel!
    @IBOutlet weak var ItemDetailsPgImage: UIImageView!
    @IBOutlet weak var itemBrandLbl: UILabel!
    @IBOutlet weak var itemPriceLbl: UILabel!
    @IBOutlet weak var itemDescLal: UILabel!
    
    @IBOutlet weak var quantityTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ItemDetailsPgImage.image = UIImage(named: itemDetailObject.productFImage)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add To Cart",style: .done, target: self, action: #selector(callAddItemToCart))
        
        self.itemNameLbl.text = itemDetailObject.productName
        self.itemBrandLbl.text = itemDetailObject.productBrand
        self.itemPriceLbl.text = String(itemDetailObject.productPrice)
        self.itemDescLal.text = itemDetailObject.productDescription
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ItemDetailPageChoosePic(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            ItemDetailsPgImage.image = UIImage(named: itemDetailObject.productFImage)
        case 1:
            ItemDetailsPgImage.image = UIImage(named: itemDetailObject.productBImage)
        default:
            print("Invalid")
        }
    }
    
    @objc func callAddItemToCart(){
//        cartClass.productList.append(itemDetailObject)
        self.itemDetailObject.productQuantity = Int(quantityTxt.text!)!
        let itemAlert = UIAlertController(title: "ALERT", message: "Item Added to cart successfully !!", preferredStyle: .alert)
        itemAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in let sb = UIStoryboard(name: "Main", bundle: nil)
            let cartVC = sb.instantiateViewController(withIdentifier: "addToCartVC") as! AddToCartViewController
            cartVC.cartClass = self.itemDetailObject
            self.navigationController?.pushViewController(cartVC, animated: true)
        }))
        self.present(itemAlert,animated: true)
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
