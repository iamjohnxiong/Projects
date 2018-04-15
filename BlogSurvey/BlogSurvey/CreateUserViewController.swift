//
//  CreateUserViewController.swift
//  BlogSurvey
//
//  Created by John Xiong on 4/14/18.
//  Copyright © 2018 John Xiong. All rights reserved.
//

import UIKit
import FirebaseAuth

class ValidObject {
    var stringValue: String?
    var isValid: Bool
    var reason: String?
    
    init(stringValue: String?, isValid: Bool, reason: String?) {
        self.stringValue = stringValue
        self.isValid = isValid
        self.reason = reason
    }
}

class CreateUserViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var verifyPasswordTextField: UITextField!
    
    @IBAction func createButtonPressed(_ sender: Any) {
        
        let okAlertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        alert.addAction(okAlertAction)
        
        let validatedEmail = validateEmail(email: emailTextField.text)
        let validatedPassword = validatePassword(password: passwordTextField.text)
        let validatedVerifyPassword = validatePassword(password: verifyPasswordTextField.text)
        
        if !validatedEmail.isValid {
            alert.title = "Invalid Email"
            alert.message = validatedEmail.reason
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        if !validatedPassword.isValid {
            alert.title = "Invalid Password"
            alert.message = validatedPassword.reason
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        if  validatedPassword.stringValue != validatedVerifyPassword.stringValue {
            alert.title = "Unmatched Passwords"
            alert.message = "Passwords do not match"
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        /*
        FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: { (user, error) in
            if let error = error {
                let alertVC = UIAlertController(title: "Issue Creating User", message: error.localizedDescription, preferredStyle: .alert)
                alertVC.addAction(UIAlertAction(title: "Try Again", style: .cancel, handler: nil))
                self.present(alertVC, animated: true, completion: nil)
                return
            }
        })
        */
    }
    
    func validateEmail(email: String?) -> ValidObject {
        var vo: ValidObject
        if email == nil || email == "" {
            vo = ValidObject(stringValue: email, isValid: false, reason: "Email cannot be blank")
        } else {
            vo = ValidObject(stringValue: email, isValid: true, reason: nil)
        }
        
        return vo
    }
    
    func validatePassword(password: String?) -> ValidObject {
        var vo: ValidObject
        
        if password == nil || password == "" {
            vo = ValidObject(stringValue: password, isValid: false, reason: "Password cannot be blank")
        } else {
            vo = ValidObject(stringValue: password, isValid: true, reason: nil)
        }
        
        return vo
    }

}
