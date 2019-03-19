//
//  SignUpViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-13.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    let userData = UserDefaults.standard
    @IBOutlet weak var signUpPageUsernameTxt: UITextField!
    @IBOutlet weak var signUpPageEmailTxt: UITextField!
    @IBOutlet weak var signUpPagePasswordTxt: UITextField!
    @IBOutlet weak var signUpPageAddressTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        signUpPagePasswordTxt.isSecureTextEntry = true
    }
    

    @IBAction func signUpPageSubmitBtn(_ sender: UIButton) {
        
//        if (signUpPageUsernameTxt.text == "" || signUpPagePasswordTxt.text == "" || signUpPageEmailTxt.text == "" || signUpPageAddressTxt.text == ""){
//
            //Username
        if (signUpPageUsernameTxt.text?.count)! > 5 {
            userData.set(signUpPageUsernameTxt.text, forKey: "username")
            
            //Password
            if (signUpPagePasswordTxt.text?.verifyPassword())! {
                userData.set(signUpPagePasswordTxt.text, forKey:"password")
                
                //Email
                if (signUpPageEmailTxt.text?.verifyEmail())! {
                    userData.set(signUpPageEmailTxt.text, forKey: "email")
                    
                    if (signUpPageAddressTxt.text?.count)! > 3 {
                    userData.set(signUpPageAddressTxt.text, forKey: "address")
                        
                        //Move To Home Page
                        let sb = UIStoryboard(name: "Main", bundle: nil)
                        let welcomeVC = sb.instantiateViewController(withIdentifier: "WelcomeVC") as! WelcomeViewController
                        self.navigationController?.pushViewController(welcomeVC, animated: true)
                    }else{
                        let signUpValidation = UIAlertController(title: "ADDRESS ALERT", message: "Address need to be of min. length 3.", preferredStyle: .alert)
                        signUpValidation.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
                        self.present(signUpValidation, animated: true)
                    }
                    
                }else{
                    let signUpValidation = UIAlertController(title: "EMAIL ALERT", message: "Incorrect Email format.", preferredStyle: .alert)
                    signUpValidation.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
                    self.present(signUpValidation, animated: true)
                }
            }else{
                let signUpValidation = UIAlertController(title: "PASSWORD ALERT", message: "Password should contain one uppercase, one digit, one lowercase and length 8.",preferredStyle: .alert)
                signUpValidation.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
                self.present(signUpValidation, animated: true)
            }
        }else{
            let signUpValidation = UIAlertController(title: "USERNAME ALERT", message: "Username needs to be of length 6.", preferredStyle: .alert)
            signUpValidation.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
            self.present(signUpValidation, animated: true)
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
