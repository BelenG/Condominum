//
//  MenuTableViewController.swift
//  Condominum
//
//  Created by leonsita on 10/18/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
 let exercisesList = ["Control de Acceso", "Incidencias", "Servicios"]
    
    @IBOutlet weak var userImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercisesList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell2", for: indexPath) as! MenuTableViewCell
        cell.labelCell.text = exercisesList[indexPath.row]
        cell.imageCell.image = UIImage(named: exercisesList[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        switch indexPath.row {
        case 0:
            let storyBoard: UIStoryboard = UIStoryboard(name: "VisitList", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "visitlist") as! VisitListViewController
            
            
            navigationController?.pushViewController(newViewController, animated: true)
            break
        default: break
        }
    }
}
