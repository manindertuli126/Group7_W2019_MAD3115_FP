//
//  WelcomeViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-13.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "movetoSignUpSegue", sender: nil)
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "movetoLoginSegue", sender: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "movetoSignUpSegue"
//        {
//            if segue.destination is SignUpViewController {
//            }
//        }
//        if segue.identifier == "movetoLoginSegue"
//        {
//          if let loginVC = segue.destination as? LoginViewController
//            segue.destination as! LoginViewController
//            segue.destination is LoginViewController
}

//}}

/*
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = sb.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
        homeVC.userEmail = email
        self.navigationController?.pushViewController(homeVC, animated: true)
*/
        
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

