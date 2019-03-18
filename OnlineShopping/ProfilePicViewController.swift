//
//  ProfilePicViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-16.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class ProfilePicViewController: UIViewController, UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    @IBOutlet weak var PofilePicPgUserNameLbl: UILabel!
    
    @IBOutlet weak var profilePicImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ProfilePicPgCameraBtn(_ sender: UIBarButtonItem) {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let myGallery = UIImagePickerController()
            myGallery.delegate = self
            myGallery.sourceType = .camera
            self.present(myGallery,animated: true,completion: nil)
        }
    }
    
    @IBAction func ProfilePicPgGalleryBtn(_ sender: UIBarButtonItem) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let myCamera = UIImagePickerController()
            myCamera.delegate = self
            myCamera.sourceType = .photoLibrary
            self.present(myCamera, animated: true, completion: nil)
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
