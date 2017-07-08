//
//  AlarmsViewController.swift
//  QuoteAlarms
//
//  Created by John Xiong on 10/5/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit
import CoreData;
import Foundation;

class AlarmsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var alarms = [Alarm]();
    var fetchRequest: NSFetchRequest<Alarm>!;
    var coreDataStack: CoreDataStack!;
    
    
    @IBOutlet weak var alarmTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let model = coreDataStack.managedContext.persistentStoreCoordinator?.managedObjectModel,
            let fetchRequest = model.fetchRequestTemplate(forName: "FetchAllAlarmsRequest") as? NSFetchRequest<Alarm> else {
                return;
        };
        self.fetchRequest = fetchRequest;
        fetchAndReload();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: TableViewDelegate Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alarms.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = alarmTableView.dequeueReusableCell(withIdentifier: "AlarmTableViewCell") as! AlarmTableViewCell;
        
        let alarm = alarms[indexPath.row];
        
        
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm";
        let alarmStringDate: String = formatter.string(from: alarm.time as! Date);
        
        cell.timeLabel.text = alarmStringDate;
        
        return cell;
    }

    
    @IBAction func unwindToAlarmsViewController(segue: UIStoryboardSegue) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AlarmsViewController {
    func fetchAndReload() {
        do {
            alarms = try coreDataStack.managedContext.fetch(fetchRequest);
            alarmTableView.reloadData();
        } catch let error as NSError {
            print("Could not fetch \(error), \(error.userInfo)");
        }
    }
}
