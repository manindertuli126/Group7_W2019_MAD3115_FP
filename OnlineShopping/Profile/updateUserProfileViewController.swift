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
        updateUserData.set(udUserTxt.text, forKey: "username")
        updateUserData.set(upPassTxt.text, forKey: "password")
        updateUserData.set(upEmailTxt.text, forKey: "email")
        updateUserData.set(upAddressTxt.text, forKey: "address")
        
        let alert = UIAlertController(title: "DATA SAVED", message: "Data Save Successfully !!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let profileVEC = sb.instantiateViewController(withIdentifier: "profileVC") as! ProfileViewController
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
