//
//  VisitListViewController.swift
//  Condominum
//
//  Created by leonsita on 10/21/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import UIKit

class VisitListViewController: UITableViewController {
    
    let exercisesList = ["Control de Acceso", "Incidencias", "Servicios"]
    var visit: [DataGetVisitByUserIdApp] = []
    @IBAction func addVisit(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ApiService.getVisitByUserIdApp(request: RequestGetVisitByUserIdApp(userId: AppDelegate.user?.userId ?? 0), completion: { data in
            self.visit = data
            self.tableView.reloadData()
        }, completionError: { error in
            debugPrint(error)
        })
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return visit.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VisitListTableViewCell
        cell.labelUILabel.text = visit[indexPath.row].Name ?? ""
        cell.dateUILabel.text = visit[indexPath.row].DateVisit ?? ""
        cell.statusUILabel.text = visit[indexPath.row].Status ?? ""
        
        var name = visit[indexPath.row].Image ?? ""
        name = ApiContant.URL_IMAGE + name
        
        print(name)
        
        let url = URL(string: name)
        
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url!), let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    cell.imageUIImage.image = image
                }
                
            }
        }
        
        
        
        //cell.imageUIImage.image = UIImage(named: exercisesList[indexPath.row])
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.section).")
        print("Cell cliked value is \(indexPath.row)")
        
        //if(indexPath.row == 0)
        //{
        //   let storyBoard: UIStoryboard = UIStoryboard(name: "Visit", bundle: nil)
        //   let newViewController = storyBoard.instantiateInitialViewController(withIdentifier: "visit")
        //    navigationController?.pushViewController(newViewController, animated: true)
        //}
    }
    
    func loadImag(url: URL)
    {
        
        
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
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
