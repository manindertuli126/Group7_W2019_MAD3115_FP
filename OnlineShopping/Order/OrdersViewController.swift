//
//  OrdersViewController.swift
//  OnlineShopping
//
//  Created by Maninder Singh on 2019-03-23.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class OrdersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Home", style: .done ,target: self, action: #selector(BackToHome))
        // Do any additional setup after loading the view.
    }
    
    @objc func BackToHome(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
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
