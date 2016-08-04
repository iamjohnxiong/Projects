    //
//  AddPersonViewController.swift
//  WhosThatAgain
//
//  Created by John Xiong on 8/4/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit

class AddPersonViewController: UIViewController {

    var person = Person?();
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        person = Person(firstName: firstNameTextField.text!, lastName: lastNameTextField.text!);
    }
    
}
