//
//  ViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-12.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginPageUserTxt: UITextField!
    @IBOutlet weak var loginPagePassTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loginPageSubmitBtn(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let menuVC = sb.instantiateViewController(withIdentifier: "MenuVC") as! MenuTableViewController
        self.navigationController?.pushViewController(menuVC, animated: true)
    }
}

