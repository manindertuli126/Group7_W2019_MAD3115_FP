//
//  Cart.swift
//  OnlineShopping
//
//  Created by Maninder Singh on 2019-03-22.
//  Copyright © 2019 Macbook. All rights reserved.
//

import Foundation

class Cart{
    
    static let accessCart = Cart()
    private var cartid:Int?
    var productid:String?
    var quantity:Int?
    var OrderID = Int.random(in: 99...999)
//    var count:Int?
//    var subtotal:Float?
//    var total:Float?
//    var name:String=""
//    var price:Float=0.0
//    var tprice:Float?
    var productList = [Products]()
    
    private init()
    {
        self.cartid=Int()
        self.productid=String()
        self.quantity=Int()
//        self.dateadded=Date()
    }
    
    init(productid:String,cartid:Int,quantity:Int,dateadded:Date)
    {
        self.productid=productid
        self.cartid=cartid
        self.quantity=quantity
//        self.dateadded=dateadded
    }
    
    func addcartitem(addproduct : Products)
    {
        self.productList.append(addproduct)
        print(productList.count)
    }
    
//    func updatequantity(pno:String,pqty:Int) ->Bool
//    {
//        for i in productList
//        {
//            if (i.productid==pno)
//            {
//                i.quantity=pqty
//                check=true
//            }
//            else
//            {
//                check=false
//            }
//        }
//        return check
//    }
//
//    func removeProduct(productId:String)->Bool {
//        var arrayNewProducts:[ShoppingCart] = [ShoppingCart]()
//        for product in self.productList {
//            if product.productid != productId {
//                arrayNewProducts.append(product)
//            }
//            else{check=false}
//        }
//        self.productList = arrayNewProducts
//        check=true
//        return check
//    }
//
//    func checkout(cid:Int)
//    {
//        //    var proid:String
//        // var pqty:Int
//        //  let od1=OderDetails()
//        orderedProduct[cid]=self.productList
//        for (_,v) in s.orderedProduct
//        {
//            do{
//                for i in 0...s.productList.count-1
//                {
//                    if let u=p1.productdetails[ v[i].productid!]
//                    {
//                        od=OderDetails(oderid:v[i].cartid!,pid:v[i].productid!,pname:u.productname,qty:v[i].quantity!,price:u.productprice,subtotal:Float(v[i].quantity!) * u.productprice)
//
//                    }
//                    od.calc(list: od)
//                }
//            } catch{ print("try again later")}
//        }
//        od.storedata(oid: cid)
//
//    }
}
