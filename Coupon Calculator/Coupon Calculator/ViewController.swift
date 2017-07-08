//
//  ViewController.swift
//  Coupon Calculator
//
//  Created by John Xiong on 3/11/17.
//  Copyright © 2017 Xiong. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var itemPriceTextField: UITextField!
    @IBOutlet weak var numberOfItemsTextField: UITextField!
    @IBOutlet weak var discountAmountTextField: UITextField!
    @IBOutlet weak var messageTextView: UITextView!
    @IBOutlet weak var numberOfCouponsTextField: UITextField!
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        
    }
    
    var itemPrice: Decimal = 0.00;
    var numberOfItems: Int = 0;
    var discountAmount: Decimal = 0.00;
    var numberOfCoupons: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doAllCalculations() {
        
        var originalTtlPriceAmt: Decimal = itemPrice * Decimal(numberOfItems);
        var ttlDiscountAmt: Decimal = discountAmount * Decimal(numberOfCoupons);
        
        var finalPriceAmt: Decimal = originalTtlPriceAmt - ttlDiscountAmt;
        
        var costPerUnit: Decimal = finalPriceAmt / Decimal(numberOfItems);
        
        
        var rounded = round(originalTtlPriceAmt / Decimal(costPerUnit));
        var newAmount: Int = round(originalTtlPriceAmt / Decimal(costPerUnit));
    }

    func displayMessage(message: String) {
        messageTextView.text = message;
    }
}

