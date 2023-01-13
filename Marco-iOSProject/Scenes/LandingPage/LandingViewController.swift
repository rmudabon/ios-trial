//
//  ViewController.swift
//  Marco-iOSProject
//
//  Created by Marco on 1/11/23.
//

import UIKit

class LandingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private var landingViewModel = LandingViewModel()

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBAction func onLogin(_ sender: Any) {
        errorLabel.isHidden = true
        
        guard let username = usernameField.text, let password = passwordField.text else {
            return
        }
        
        let loginParams = LoginParams(username: username, password: password)
        
        guard landingViewModel.isFormValid(loginParams) == true else {
            errorLabel.isHidden = false
            return
        }
        
        landingViewModel.submitForm(loginParams)
        
        
    }
}

