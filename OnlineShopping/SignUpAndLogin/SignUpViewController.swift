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
        
        userData.set(signUpPageUsernameTxt.text, forKey: "username")
        userData.set(signUpPagePasswordTxt.text, forKey: "password")
        userData.set(signUpPageEmailTxt.text, forKey: "email")
        userData.set(signUpPageAddressTxt.text, forKey: "address")
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let welcomeVC = sb.instantiateViewController(withIdentifier: "WelcomeVC") as! WelcomeViewController
        
        self.navigationController?.pushViewController(welcomeVC, animated: true)
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
