//
//  PaymentViewController.swift
//  OnlineShopping
//
//  Created by Maninder Singh on 2019-03-23.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {

    let getUserAddress = UserDefaults.standard
    var cashOrCard = false //Cash
    
    @IBOutlet weak var shippingAddressLbl: UITextField!
    
    @IBOutlet weak var SelectAccountLbl: UILabel!
    @IBOutlet weak var SelectBankLbl: UILabel!
    @IBOutlet weak var AccountNoLbl: UITextField!
    @IBOutlet weak var BankLbl: UITextField!
    
    @IBOutlet weak var totalAmountLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.SelectBankLbl.isHidden = true
        self.SelectAccountLbl.isHidden = true
        self.AccountNoLbl.isHidden = true
        self.BankLbl.isHidden = true
        self.shippingAddressLbl.text = self.getUserAddress.string(forKey: "address")
        self.totalAmountLbl.text = String(Cart.accessCart.totalPrice).addDollar()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func placeOrderBtn(_ sender: UIButton) {
        let sb1 = UIStoryboard(name: "Main", bundle: nil)
        let orderVC = sb1.instantiateViewController(withIdentifier: "OrderVC") as! OrdersViewController
        if self.cashOrCard{
            if (self.BankLbl.text?.count)! > 15 {
                self.getUserAddress.set(self.BankLbl.text, forKey: "cardno")
                if (self.AccountNoLbl.text?.count)! > 2{
                    self.getUserAddress.set(self.AccountNoLbl.text, forKey: "CVV")
                    
                    //Adding order ID
                    Cart.accessCart.orderedProduct.updateValue(Cart.accessCart.productList, forKey: Cart.accessCart.OrderID)
                    Cart.accessCart.productList.removeAll()
                    
                    if((self.shippingAddressLbl.text?.count)! > 3){
                        self.getUserAddress.set(self.shippingAddressLbl.text, forKey: "address")
                    }
                    
                    //move to Order
                    self.navigationController?.pushViewController(orderVC, animated: true)
                    
                }else{
                    let alert = UIAlertController(title: "CVV ALERT", message: "CVV needs to be of 3 digits", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert,animated: true)
                }
            }else{
                let alert = UIAlertController(title: "CARD ALERT", message: "Card number must be of 16 digits", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert,animated: true)
            }
        }else{
            self.navigationController?.pushViewController(orderVC, animated: true)
        }
    }
    
    
    @IBAction func paymentMethod(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex{
        case 0:
            self.SelectBankLbl.isHidden = true
            self.SelectAccountLbl.isHidden = true
            self.AccountNoLbl.isHidden = true
            self.BankLbl.isHidden = true
            cashOrCard = false
        case 1:
            self.SelectBankLbl.isHidden = false
            self.SelectAccountLbl.isHidden = false
            self.AccountNoLbl.isHidden = false
            self.BankLbl.isHidden = false
            cashOrCard = true
        default:
            print("Invalid")
        }
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
