//
//  AlarmTableViewCell.swift
//  QuoteAlarms
//
//  Created by John Xiong on 10/5/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit;

class AlarmTableViewCell: UITableViewCell {
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var frequencyLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var enableSwitch: UISwitch!
}
