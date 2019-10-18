//
//  VisitViewController.swift
//  Condominum
//
//  Created by leonsita on 10/17/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import UIKit

class VisitViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var TableView: UITableView!
    
    
    var visit: [DataGetVisitByUserIdApp] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->  Int {
        return visit.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "mycell")
        cell.textLabel?.text  = visit[indexPath.row].Name ?? ""
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ApiService.getVisitByUserIdApp(request: RequestGetVisitByUserIdApp(userId: AppDelegate.user?.userId ?? 0), completion: { data in
            self.visit = data
            self.TableView.reloadData()
        }, completionError: { error in
            debugPrint(error)
        })
        // Do any additional setup after loading the view.
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
