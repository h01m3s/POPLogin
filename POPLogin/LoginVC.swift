//
//  LoginVC.swift
//  POPLogin
//
//  Created by Weijie Lin on 5/26/17.
//  Copyright © 2017 Weijie Lin. All rights reserved.
//

import UIKit

class DataEntryTextField: UITextField, Jitterable {
    
}

class LoginButton: UIButton, Jitterable {
    
}

class FlashingLabel: UILabel, Flashable, Jitterable {
    
}

class LoginVC: UIViewController {
    
    @IBOutlet weak var emailField: DataEntryTextField!
    @IBOutlet weak var passwordField: DataEntryTextField!
    @IBOutlet weak var errorLabel: FlashingLabel!
    @IBOutlet weak var loginBtn: LoginButton!
    
    @IBAction func loginBtnWasPressed(_ sender: Any) {
        emailField.jitter()
        passwordField.jitter()
        loginBtn.jitter()
        errorLabel.flash()
        errorLabel.jitter()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

