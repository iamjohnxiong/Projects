//
//  LoginViewController.swift
//  BlogSurvey
//
//  Created by John Xiong on 4/14/18.
//  Copyright © 2018 John Xiong. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController : UIViewController {
    
    var handle: FIRAuthStateDidChangeListenerHandle?
    
    let maxLoginRetryCount = 5
    var loginRetryCount = 0
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func unwindToLogin(_ segue: UIStoryboardSegue) { }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        // TODO: Display spinner
        /*FIRAuth.auth()?.signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
            if let error = error {
                self.loginRetryCount += 1
                if self.loginRetryCount < self.maxLoginRetryCount {
                    let alertController = UIAlertController(title: "Uh Oh!", message: error.localizedDescription, preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Try Again", style: .cancel, handler: nil))
                    self.present(alertController, animated: true, completion: nil)
                } else {
                    self.loginRetryCount = 0
                    let alertController = UIAlertController(title: "Max Retries Reached", message: "You've reached max retries of \(self.maxLoginRetryCount). Please wait 5 minutes before trying again.", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                    self.present(alertController, animated: true, completion: nil)
                }
                return
            }
            // Present view controller
            let surveyViewController = self.storyboard?.instantiateViewController(withIdentifier: "SurveyViewController") as! ViewController
            self.present(surveyViewController, animated: true, completion: nil)
        })*/
        
        // Present view controller
        let surveyViewController = self.storyboard?.instantiateViewController(withIdentifier: "SurveyViewController") as! ViewController
        self.present(surveyViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        handle = FIRAuth.auth()?.addStateDidChangeListener({ (auth, user) in
            
        })
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        handle = FIRAuth.auth()?.removeStateDidChangeListener(handle!) as? FIRAuthStateDidChangeListenerHandle
    }
    
    
    
}

extension LoginViewController {
    
}
