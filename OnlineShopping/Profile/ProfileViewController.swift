//
//  UpdateProfileViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-14.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    let displayUserData = UserDefaults.standard
    
    @IBOutlet weak var profilePicImg: UIImageView!
    @IBOutlet weak var profileUsername: UITextField!
    @IBOutlet weak var profilePasssword: UITextField!
    @IBOutlet weak var profileEmail: UITextField!
    @IBOutlet weak var profileAddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit Profile", style: .done, target: self, action: #selector(editProfile))
        
        // Do any additional setup after loading the view.
        
        //display user data with disable fields
        profileUsername.placeholder = displayUserData.string(forKey: "username")
        profilePasssword.placeholder = displayUserData.string(forKey: "password")
        profileEmail.placeholder = displayUserData.string(forKey: "email")
        profileAddress.placeholder = displayUserData.string(forKey: "address")
    }
    
    
    @IBAction func updateProfilePicBtn(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
        let gallery = UIImagePickerController()
            gallery.delegate = self
            gallery.sourceType = .photoLibrary
            self.present(gallery,animated: true, completion: nil)
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.profilePicImg.image = image
            self.profilePicImg.layer.cornerRadius = self.profilePicImg.frame.size.width / 2;
            self.profilePicImg.clipsToBounds = true;
        }else{
            print("Something went wrong")
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @objc func editProfile(){
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let profilepage = sb.instantiateViewController(withIdentifier: "updateProfileVC") as! updateProfileViewController
        self.navigationController?.pushViewController(profilepage, animated: true)
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
