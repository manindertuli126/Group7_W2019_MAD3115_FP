//
//  Product.swift
//  OnlineShopping
//
//  Created by Maninder Singh on 2019-03-22.
//  Copyright © 2019 Macbook. All rights reserved.
//

import Foundation

class Products{
    let productid:Int
    var productFImage:String
    var productBImage:String
    var productName:String
    var productBrand : String
    var productDescription : String
    var productPrice:Float
    var productdetails=Dictionary<Int,Products>()
    
    init (){
        self.productid = Int()
        self.productName = String()
        self.productFImage = String()
        self.productBImage = String()
        self.productBrand = String()
        self.productDescription = String()
        self.productPrice = Float()
    }
    
    init (productName:String ,productBrand:String,productDescription:String, productPrice:Float,productFImage:String,productBImage:String){
        self.productid = Int()
        self.productName = productName
        self.productFImage = productFImage
        self.productBImage = productBImage
        self.productBrand = productBrand
        self.productDescription = productDescription
        self.productPrice = productPrice
    }
    
    func addproducts(pid:Int,prod:Products)
    {
        productdetails.updateValue(prod, forKey: pid)
    }
}
