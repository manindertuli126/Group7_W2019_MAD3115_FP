//
//  ItemsTableViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-14.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class ItemsTableViewController: UITableViewController {

    var passImageParameter : Int!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, didSelectRowAt
        indexPath: IndexPath) {
        if indexPath.section == 0{
        self.passImageParameter = indexPath.row
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
            destination.firstImage = "AudiFront.jpeg"
            destination.secondImage = "AudiBack.jpg"
        case 1:
            destination.firstImage = "BMWFront"
            destination.secondImage = "BMWBack"
        case 2:
            destination.firstImage = "BentleyFront"
            destination.secondImage = "BentleyBack"
        case 3:
            destination.firstImage = "MercedesFront.jpg"
            destination.secondImage = "MercedesBack.jpg"
        case 4:
            destination.firstImage = "LamborghiniFront"
            destination.secondImage = "LamborghiniBack"
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
