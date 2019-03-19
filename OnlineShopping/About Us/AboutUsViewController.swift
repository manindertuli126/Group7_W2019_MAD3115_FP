//
//  AboutUsViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-18.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit
import WebKit

class AboutUsViewController: UIViewController,WKNavigationDelegate {

    
    @IBOutlet weak var aboutUsPage: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        loadHTMLFile()
        // Do any additional setup after loading the view.
    }
    
    func loadHTMLFile(){
        let filepath = Bundle.main.url(forResource: "AboutUsData", withExtension: "html")
        let aboutUsLink = URLRequest(url: filepath!)
        aboutUsPage.load(aboutUsLink)
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
