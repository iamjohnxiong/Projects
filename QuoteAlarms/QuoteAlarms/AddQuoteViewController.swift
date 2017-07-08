//
//  AddQuoteViewController.swift
//  QuoteAlarms
//
//  Created by John Xiong on 10/10/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit;
import CoreData;

class AddQuoteViewController: UIViewController {
    
    @IBOutlet weak var quoteTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let vc = segue.destination as! QuotesViewController;
        let quoteToBeAdded = Quote(context: vc.coreDataStack.managedContext);
        quoteToBeAdded.quoteName = "Test";
        quoteToBeAdded.quoteSaying = quoteTextView.text;
        vc.quoteToBeAdded = quoteToBeAdded;
    }
 

}
