//
//  ViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-12.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    let getUserData = UserDefaults.standard
    @IBOutlet weak var loginPageUserTxt: UITextField!
    @IBOutlet weak var loginPagePassTxt: UITextField!
    @IBOutlet weak var LoginImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginPagePassTxt.isSecureTextEntry = true
        LoginImage.layer.cornerRadius = LoginImage.frame.height / 2
        LoginImage.clipsToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loginPageSubmitBtn(_ sender: UIButton) {
        if loginPageUserTxt.text! == (getUserData.string(forKey: "username")!) && loginPagePassTxt.text! == (getUserData.string(forKey: "password")!){
        }else{
            let loginValidationAlert = UIAlertController(title: "Validation Alert", message: "Incorrect Username Or Password. Please Try Again!!", preferredStyle: .alert)
            loginValidationAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(loginValidationAlert, animated: true)
        }
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let menuVC = sb.instantiateViewController(withIdentifier: "MenuVC") as! MenuTableViewController
        self.navigationController?.pushViewController(menuVC, animated: true)
    }
    
//    func readInformationPlist() {
//        if let bundlePath = Bundle.main.path(forResource: "UserCredentials", ofType: "plist") {
//            let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
//            let userList = dictionary!["User"] as! NSArray
//            for e in userList
//            {
//                print(e)
//                let user = e as! NSDictionary
//                print("Employee ID      : \(user["username1"]!)")
//                print("Employee Name    : \(user["password1"]!)")
//                print("----------------------------------")
//                print("Employee ID      : \(user["username2"]!)")
//                print("Employee Name    : \(user["password2"]!)")
//            }
//        }
//    }
}

