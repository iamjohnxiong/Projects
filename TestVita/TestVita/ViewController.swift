//
//  ViewController.swift
//  TestVita
//
//  Created by John Xiong on 8/31/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let loginView : FBSDKLoginButton = FBSDKLoginButton();
        self.view.addSubview(loginView);
        loginView.center = self.view.center;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

