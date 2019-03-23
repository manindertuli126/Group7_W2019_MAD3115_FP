//
//  itemcollectionsViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-19.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class itemcollectionsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var passImageParameter : Int!
    var productClass = Products()

    @IBOutlet weak var collectionlist: UICollectionView!
    
    var Icons = ["AudiIcon.jpg","BMWIcon.jpg","BentleyIcon.jpg","MercedesIcon.jpg","LamborghiniIcon.jpg","FerrariIcon.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionlist.delegate = self
        collectionlist.dataSource = self
        
        appendItemDetails()
        // Do any additional setup after loading the view.
    }
    
    func appendItemDetails(){
        let product1 = Products(productid: "111" ,productName: "Audi Q5", productBrand: "Audi", productDescription: "This officially licensed Audi Q5 ride-on for toddlers 3-8 years (under supervision of adult) with maximum rider weight of 66lbs", productPrice: 350.0, productFImage: "AudiFront.jpeg",productBImage: "AudiBack.jpg", productQuantity:1)
        
        let product2 = Products(productid: "222", productName: "BMW i8", productBrand: "BMW", productDescription: "The BMW i8 is ready to revolutionize its battery ride-on class. No longer a vision, but charged intelligence.", productPrice: 450.0, productFImage: "BMWFront",productBImage: "BMWBack", productQuantity:1)
        
        let product3 = Products(productid: "333",productName: "Bentley Continental", productBrand: "Bentley", productDescription: "A licensed Bentley toy car, the Continental GT is ready one of the sharpest ride on toys on the market.", productPrice: 600.0, productFImage: "BentleyFront.jpg",productBImage: "BentleyBack.jpg", productQuantity:1)
        
        let product4 = Products(productid: "444",productName: "Mercedes G55", productBrand: "Mercedes", productDescription: "Exclusively detailed exterior, licensed Mercedes benz G55 packed with all of the authentic badges,sounds, LED lights, MP3 input.", productPrice: 620.0, productFImage: "MercedesFront.jpg",productBImage: "MercedesBack.jpg", productQuantity:1)
        
        let product5 = Products(productid: "555",productName: "Lamborghini Aventador", productBrand: "Lamborghini", productDescription: " Kids will love this ride on car with sport looking with upgraded 2x12v motors and 12v strong battery.", productPrice: 550.0, productFImage: "LamborghiniFront",productBImage: "LamborghiniBack", productQuantity:1)
        
        let product6 = Products(productid: "666", productName: "Ferrari 12V LaFerrari", productBrand: "Ferrari", productDescription: "Officially licensed Ferrari LaFerrari electric ride on car Can be controlled by child via steering wheel and pedal or by parent with the included remote controller", productPrice: 320.0, productFImage: "FerrariFront",productBImage: "FerrariBack", productQuantity:1)
        
        productClass.addproducts(pid: 111, prod: product1)
        productClass.addproducts(pid: 222, prod: product2)
        productClass.addproducts(pid: 333, prod: product3)
        productClass.addproducts(pid: 444, prod: product4)
        productClass.addproducts(pid: 555, prod: product5)
        productClass.addproducts(pid: 666, prod: product6)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.Icons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! itemlistCollectionViewCell
        cell.itemImage.image = UIImage(named: Icons[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 0{
        passImageParameter = indexPath.row
        switch indexPath.row{
            case 0:
            print("Audi")
            case 1:
            print("BMW")
            case 2:
            print("Bentley")
            case 3:
            print("Mercedes")
            case 4:
            print("Lamborghini")
            case 5:
            print("Ferrari")
            default:
            print("Invalid")
            }
            self.performSegue(withIdentifier: "moveToItemDetails", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ItemDetailsViewController
        switch self.passImageParameter{
        case 0:
            destination.itemDetailObject = productClass.productdetails[111]!
        case 1:
            destination.itemDetailObject = productClass.productdetails[222]!
        case 2:
            destination.itemDetailObject = productClass.productdetails[333]!
        case 3:
            destination.itemDetailObject = productClass.productdetails[444]!
        case 4:
            destination.itemDetailObject = productClass.productdetails[555]!
        case 5:
            destination.itemDetailObject = productClass.productdetails[666]!
        default:
            print("Invalid")
        }
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
