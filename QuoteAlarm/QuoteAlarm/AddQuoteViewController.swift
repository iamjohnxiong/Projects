//
//  AddQuoteViewController.swift
//  QuoteAlarm
//
//  Created by John Xiong on 9/7/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit

class AddQuoteViewController: UIViewController {
    @IBOutlet weak var quoteTextView: UITextView!
    
    @IBOutlet weak var authorTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        quoteTextView.layer.borderColor = UIColor( red: 153/255, green: 153/255, blue:0/255, alpha: 1.0 ).cgColor;
        quoteTextView.layer.borderWidth = 1;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
