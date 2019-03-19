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
    @IBOutlet weak var rememberMeBtn: UISwitch!
    @IBOutlet weak var loginPageUserTxt: UITextField!
    @IBOutlet weak var loginPagePassTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginPagePassTxt.isSecureTextEntry = true
        
        if let loginUsername = getUserData.string(forKey: "loginuser"){
            loginPageUserTxt.text = loginUsername
            if let loginPassword = getUserData.string(forKey: "loginpass"){
                loginPagePassTxt.text = loginPassword
                rememberMeBtn.isOn = true
            }
        }else{
            rememberMeBtn.isOn = false
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showPasswordBtn(_ sender: UIButton) {
        loginPagePassTxt.isSecureTextEntry = false
    }
    
    @IBAction func loginPageSubmitBtn(_ sender: UIButton) {
        
//        if (loginPageUserTxt.text?.count)! > 1 && (loginPagePassTxt.text?.count)! > 1{
//        if loginPageUserTxt.text! == (getUserData.string(forKey: "username")!) && loginPagePassTxt.text! == (getUserData.string(forKey: "password")!){
//
//            if rememberMeBtn.isOn{
//                getUserData.set(loginPageUserTxt, forKey: "loginuser")
//                getUserData.set(loginPagePassTxt, forKey: "loginpass")
//            }else{
//                getUserData.removeObject(forKey: "loginuser")
//                getUserData.removeObject(forKey: "loginpass")
//            }

            //move to Home Page
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let menuVC = sb.instantiateViewController(withIdentifier: "MenuVC") as! MenuTableViewController
            self.navigationController?.pushViewController(menuVC, animated: true)
            
//        }else{
//            let loginValidationAlert = UIAlertController(title: "Validation Alert", message: "Incorrect Username Or Password. Please Try Again!!", preferredStyle: .alert)
//            loginValidationAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//            self.present(loginValidationAlert, animated: true)
//        }
//    }
//    else{
//    let emptyAlert = UIAlertController(title: "ALERT", message: "Username or Password text fields cannot be blank.", preferredStyle: .alert)
//            emptyAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//            self.present(emptyAlert,animated: true)
//        }
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

