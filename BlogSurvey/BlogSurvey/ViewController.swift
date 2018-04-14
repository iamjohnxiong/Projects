//
//  ViewController.swift
//  BlogSurvey
//
//  Created by John Xiong on 4/13/18.
//  Copyright © 2018 John Xiong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var wantCareer = false
    var wantLife = false
    var wantProgramming = false
    var wantOutdoors = false
    
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var otherTextView: UITextView!
    
    @IBAction func submitButtonClicked(_ sender: Any) {
    }
    
    @IBAction func blogTypeSwitched(_ sender: Any) {
        let typeSwitch = sender as! UISwitch
        let doWant = typeSwitch.isOn
        switch typeSwitch.tag {
        case 1:
            wantCareer = doWant
            break
        case 2:
            wantLife = doWant
            break
        case 3:
            wantProgramming = doWant
            break
        case 4:
            wantOutdoors = doWant
            break
        default:
            print("error")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        otherTextView.layer.borderColor = UIColor.black.cgColor
        otherTextView.layer.borderWidth = 1
        submitButton.layer.borderColor = UIColor.black.cgColor
        submitButton.layer.borderWidth = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

