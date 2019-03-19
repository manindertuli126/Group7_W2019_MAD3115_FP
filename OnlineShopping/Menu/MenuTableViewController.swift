//
//  MenuTableViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-13.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: true)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            switch indexPath.row{
            case 0:
                print("Items List")
                self.performSegue(withIdentifier: "moveToItemsList", sender: nil)
            case 1:
                print("Cart")
                self.performSegue(withIdentifier: "moveToAddToCart", sender: nil)
            case 2:
                print("Orders")
            default:
                print("Invalid")
            }
        }else{
            switch indexPath.row{
            case 0:
                print("My Account")
                self.performSegue(withIdentifier: "moveToUpdateProfile", sender: nil)
            case 1:
                print("About Us")
                self.performSegue(withIdentifier: "moveToAboutUs", sender: nil)
            case 2:
                print("LogOut")
                self.performSegue(withIdentifier: "moveToWelcomePage", sender: nil)
            default:
            print("Invalid")
        }
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
