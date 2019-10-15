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
    
    private let primaryColor = UIColor(red: 197/255, green: 111/255, blue: 243/255, alpha: 1)
    private let secondaryColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    private let tertiaryColor = UIColor(red: 254/255, green: 254/255, blue: 254/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //logo.layer.cornerRadius = logo.bounds.height / 2
        //logo.clipsToBounds = true
        
        loginDataView.layer.borderColor = tertiaryColor.cgColor
        loginDataView.layer.borderWidth = 1
        loginDataView.layer.cornerRadius = 3
        loginDataView.clipsToBounds = true
        
        initSessionButton.backgroundColor = primaryColor
        initSessionButton.setTitleColor(secondaryColor, for: .normal)
        initSessionButton.layer.cornerRadius = 3
        initSessionButton.clipsToBounds = true
        
        forgottenPasswordButton.setTitleColor(primaryColor, for: .normal)
    }
    @IBAction func btnSessionClick(_ sender: Any) {
        let user = userTextField.text!
        let pass = passwordTextField.text!
        
        let login = RequestLogin(user: user, pass: pass)
        
        print("asdf")
        
        ApiService.login(request: login, completion : { data in
            self.showAlert(title : "1" , message : "2")
        } , complationError : { code in
            self.showAlert( title: "hay un error en " , message : "")
        })
        
    }
    
    
    func showAlert( title : String , message : String ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Entiendo", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }


}

