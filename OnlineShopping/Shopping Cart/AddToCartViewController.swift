//
//  AddToCartViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-18.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class AddToCartViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let sb = UIStoryboard(name: "Main", bundle: nil)
    var cartClass = Products()
    var productArray = [Products]()
    
    @IBOutlet weak var customCartItems: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.customCartItems.delegate = self
        self.customCartItems.dataSource = self
        
        productArray.append(cartClass)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Place Order", style: .done ,target: self, action: #selector(OrderedPlaced))
//        self.navigationItem.hidesBackButton = true
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Home", style: .done ,target: self, action: #selector(BackToHome))
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cartCell = tableView.dequeueReusableCell(withIdentifier: "itemCartCell") as! cartItemsTableViewCell
        cartCell.cartImage.image = UIImage(named: productArray[indexPath.row].productFImage)
        cartCell.cartName.text = productArray[indexPath.row].productName
        cartCell.cartQuantity.text = String(productArray[indexPath.row].productQuantity)
        cartCell.cartSinglePrice.text = String(productArray[indexPath.row].productPrice)
        let totalPrice = productArray[indexPath.row].productPrice * Float(productArray[indexPath.row].productQuantity)
        cartCell.cartPrice.text = String(totalPrice)
        return cartCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300.0
    }
    
    @objc func OrderedPlaced(){
        let orderVC = sb.instantiateViewController(withIdentifier: "OrderVC") as! OrdersViewController
        self.navigationController?.pushViewController(orderVC, animated: true)
    }

    @objc func BackToHome(){
        let homeVC = sb.instantiateViewController(withIdentifier: "MenuVC") as! MenuTableViewController
        self.navigationController?.pushViewController(homeVC, animated: true)
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
