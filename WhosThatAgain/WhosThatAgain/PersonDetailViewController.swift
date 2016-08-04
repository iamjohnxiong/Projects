//
//  PersonDetailViewController.swift
//  WhosThatAgain
//
//  Created by John Xiong on 8/3/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    var person: Person?;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        title = person!.fullName;
    }
    
    

}
