//
//  LoginViewController.swift
//  MyBankApp
//
//  Created by John Xiong on 7/8/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userIdTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var invalidMessageTextField: UILabel!
    
    @IBAction func signInButton(sender: AnyObject) {
        
        if userIdTextField.text == "su" && passwordTextField.text == "su" {
            performSegueWithIdentifier("LoginToHomeSegue", sender: self);
        } else {
            invalidMessageTextField.enabled = true;
            invalidMessageTextField.text = "Invalid User Id or Password. Please try again."
        }
        
    }
}
