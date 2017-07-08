//
//  ViewController.swift
//  QuoteAlarm
//
//  Created by John Xiong on 9/7/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var alarmTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK - Table View Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = alarmTableView.dequeueReusableCell(withIdentifier: "AlarmTableViewCell") as! AlarmTableViewCell;
        
        cell.timeLabel.text = "13:00 AM";
        cell.alarmTimeFrame.text = "Weekdays";
        cell.alarmOnSwitch.setOn(true, animated: true);
        cell.quoteLabel.text = "Fortune favors the bold...";
        
        return cell;
    }
    
    
    @IBAction func unwindToAlarmViewContoller(_ segue: UIStoryboardSegue) {
        
    }

}

