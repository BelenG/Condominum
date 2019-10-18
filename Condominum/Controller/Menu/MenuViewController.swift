//
//  MenuViewController.swift
//  Condominum
//
//  Created by leonsita on 10/16/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let exercisesList = ["Control de Acceso", "Reporte de Incidencias", "Cuotas de Mantenimiento"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercisesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuTableViewCell
        cell.labelCell.text = exercisesList[indexPath.row]
        cell.imageCell.image = UIImage(named: exercisesList[indexPath.row])
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.section).")
        print("Cell cliked value is \(indexPath.row)")
        
        if(indexPath.row == 0)
        {
            open()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func open(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Visit", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "visit") as! VisitViewController
        self.present(newViewController, animated: true, completion: nil)
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
