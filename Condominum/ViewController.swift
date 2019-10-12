//
//  ViewController.swift
//  Condominum
//
//  Created by leonsita on 10/10/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    
    @IBOutlet weak var header: UIImageView!
    
    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var loginDataView: UIView!
    @IBOutlet weak var LoginDataLineView: UIView!
    
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var initSessionButton: UIButton!
    
    @IBOutlet weak var forgottenPasswordButton: UIButton!
    
    private let primaryColor = UIColor(red: 56/255, green: 117/255, blue: 233/255, alpha: 1)
    private let secondaryColor = UIColor(red: 173/255, green: 202/255, blue: 250/255, alpha: 1)
    private let tertiaryColor = UIColor(red: 254/255, green: 254/255, blue: 254/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        logo.layer.cornerRadius = logo.bounds.height / 2
        logo.clipsToBounds = true
        
    }


}

