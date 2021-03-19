//
//  TableViewController.swift
//  TableView
//
//  Created by Darkhan on 17.03.2021.
//

import UIKit

class TableViewController: UITableViewController {

    var arrayTitle = ["Almas", "Tarlan", "Magzhan", "Anvar", "Baha", "Galym", "Misha"]
    var arrayPlace = ["Baekenov", "Tleubay", "Maksat", "Artemov", "Abenov", "Zikiriya", "Yugay"]
    var arrayImage = ["asd", "bro", "kimetsu", "onepunch", "bro", "giyu", "kim"]
    var arrayTime = ["Today", "Yesterday", "Today", "Today", "Today", "Today", "Today"]
    var arrayPrice = ["1000$", "2000$", "3000$", "15$", "500$", "420$", "69$"]
    var arrayDesc = ["Lorem ipsum dolor sit amen", "Lorem ipsum dolor sit amen", "Lorem ipsum dolor sit amen", "Lorem ipsum dolor sit amen", "Lorem ipsum dolor sit amen", "Lorem ipsum dolor sit amen", "Lorem ipsum dolor sit amen"]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayTitle.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        
        let labelTitle = cell.viewWithTag(1000) as! UILabel
        labelTitle.text = arrayTitle[indexPath.row]
        
        let labelPlace = cell.viewWithTag(1001) as! UILabel
        labelPlace.text = arrayPlace[indexPath.row]
        
        let labelTime = cell.viewWithTag(1003) as! UILabel
        labelTime.text = arrayTime[indexPath.row]
        
        let labelPrice = cell.viewWithTag(1004) as! UILabel
        labelPrice.text = arrayPrice[indexPath.row]

        let imageView = cell.viewWithTag(1002) as! UIImageView
        imageView.image = UIImage(named: arrayImage[indexPath.row])

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 528.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailVC = (storyboard?.instantiateViewController(identifier: "DetailVC"))! as ViewController
        
        detailVC.titled = arrayTitle[indexPath.row]
        detailVC.price = arrayPrice[indexPath.row]
        detailVC.time = arrayTime[indexPath.row]
        detailVC.desc = arrayDesc[indexPath.row]
        detailVC.image = arrayImage[indexPath.row]

        self.navigationController?.pushViewController(detailVC, animated: true)
    }

    @IBAction func addNewPerson(_ sender: Any) {
//        arrayNames.append("New Person")
//        arraySurNames.append("New Person")
        arrayImage.append("bro")
        
        tableView.reloadData()
    }
    
    var isOn: Bool = false
    @IBAction func likeButton(_ sender: Any) {
        
        tableView.reloadData()
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
//            arrayNames.remove(at: indexPath.row)
//            arraySurNames.remove(at: indexPath.row)
            arrayImage.remove(at: indexPath.row)
            
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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
