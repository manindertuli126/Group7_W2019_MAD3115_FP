//
//  updateProfileViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class updateUserProfileViewController: UIViewController {

    var updateUserData = UserDefaults.standard
    
    @IBOutlet weak var udUserTxt: UITextField!
    @IBOutlet weak var upPassTxt: UITextField!
    @IBOutlet weak var upEmailTxt: UITextField!
    @IBOutlet weak var upAddressTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveButton))
        // Do any additional setup after loading the view.
    }
    
    @objc func saveButton(){
        for i in 0...3{
            switch i {
            case 0:
                if ((udUserTxt.text?.count)! > 5){
                    updateUserData.set(udUserTxt.text, forKey: "username")
                }
            case 1:
                if (upPassTxt.text?.verifyPassword())!{
                    updateUserData.set(udUserTxt.text, forKey: "password")
                }
            case 2:
                if (upEmailTxt.text?.verifyEmail())!{
                    updateUserData.set(udUserTxt.text, forKey: "email")
                }
            case 3:
                if ((upAddressTxt.text?.count)! > 3){
                    updateUserData.set(udUserTxt.text, forKey: "address")
                }
            default:
                print("Invalid")
            }
        }
        
        let alert = UIAlertController(title: "DATA SAVED", message: "Data Save Successfully !!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let profileVEC = sb.instantiateViewController(withIdentifier: "MenuVC") as! MenuTableViewController
            self.navigationController?.pushViewController(profileVEC, animated: true)
    }))
        self.present(alert,animated: true)
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
