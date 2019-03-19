//
//  itemcollectionsViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class itemcollectionsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var h = ["cropped-1080-1920-985338-2.jpg"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.h.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! itemlistCollectionViewCell
        cell.itemImage.image = UIImage(named: h[indexPath.row])
        return cell
        
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
