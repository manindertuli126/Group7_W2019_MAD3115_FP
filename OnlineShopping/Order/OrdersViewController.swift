//
//  OrdersViewController.swift
//  OnlineShopping
//
//  Created by Maninder Singh on 2019-03-23.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class OrdersViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var excessProductList = Cart.accessCart
    var getAddress = UserDefaults.standard
    var OrderID = Int.random(in: 99...999)
    
    @IBOutlet weak var orderTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.orderTable.delegate = self
        self.orderTable.dataSource = self
//        excessProductList.orderedProduct.updateValue(excessProductList.orderedProductList, forKey: self.OrderID)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Home", style: .done ,target: self, action: #selector(BackToHome))
        // Do any additional setup after loading the view.
    }
    
    @objc func BackToHome(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = sb.instantiateViewController(withIdentifier: "MenuVC") as! MenuTableViewController
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(excessProductList.orderedProductList.count)
        return excessProductList.orderedProductList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let orderCell = tableView.dequeueReusableCell(withIdentifier: "PlacedOrderCell") as! OrderTableViewCell
        orderCell.orderIdLbl.text = String(excessProductList.totalPrice).addDollar()
        if Cart.accessCart.paymentMethod == true{
            orderCell.payMethodLbl.text = "Card Payment"
        }else{
            orderCell.payMethodLbl.text = "Cash"
        }
        orderCell.shippingLbl.text = getAddress.string(forKey: "address")
        
        return orderCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
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
