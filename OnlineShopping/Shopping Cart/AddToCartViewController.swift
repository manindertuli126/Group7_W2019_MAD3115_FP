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
    var excessProductList = Cart.accessCart
    
    @IBOutlet weak var customCartItems: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.customCartItems.delegate = self
        self.customCartItems.dataSource = self
        
        if excessProductList.productList.count > 0{
            self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Place Order", style: .done ,target: self, action: #selector(OrderedPlaced))
        }
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Home", style: .done ,target: self, action: #selector(BackToHome))
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return excessProductList.productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cartCell = tableView.dequeueReusableCell(withIdentifier: "itemCartCell") as! cartItemsTableViewCell
        cartCell.cartImage.image = UIImage(named: excessProductList.productList[indexPath.row].productFImage)
        cartCell.cartName.text = excessProductList.productList[indexPath.row].productName
        cartCell.cartQuantity.text = String(excessProductList.productList[indexPath.row].productQuantity)
        cartCell.cartSinglePrice.text = String(excessProductList.productList[indexPath.row].productPrice)
        let totalPrice = excessProductList.productList[indexPath.row].productPrice * Float(excessProductList.productList[indexPath.row].productQuantity)
        cartCell.cartPrice.text = String(totalPrice)
        return cartCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 280.0
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("Deleted")
            excessProductList.productList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    @objc func OrderedPlaced(){
        if excessProductList.productList.count > 0{
        let alert = UIAlertController(title: "PLACE ORDER", message: "Do you want to place order?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: {action in
            //Adding order ID
            Products.accessOrder.orderedProduct.updateValue(Cart.accessCart.productList, forKey: self.excessProductList.OrderID)
            Cart.accessCart.productList.removeAll()
            let sb1 = UIStoryboard(name: "Main", bundle: nil)
            let orderVC = sb1.instantiateViewController(withIdentifier: "OrderVC") as! OrdersViewController
            self.navigationController?.pushViewController(orderVC, animated: true) }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert,animated: true)
        }else{
            let alert = UIAlertController(title: "ALERT", message: "There is no item to place order.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert,animated: true)
        }
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
