//
//  AddAlarmViewController.swift
//  QuoteAlarms
//
//  Created by John Xiong on 10/21/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit
import CoreData;

class AddAlarmViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var quotes = [Quote]();
    var fetchRequest: NSFetchRequest<Quote>!;
    var coreDataStack: CoreDataStack!;
    var selectedQuote: Quote?;
    
    
    // MARK: IBOutlets
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var quoteTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let model = coreDataStack.managedContext.persistentStoreCoordinator?.managedObjectModel,
            let fetchRequest = model.fetchRequestTemplate(forName: "FetchAllQuotesRequest") as? NSFetchRequest<Quote> else {
                return;
        };
        self.fetchRequest = fetchRequest;
        fetchAndReload();    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: TableViewDelegate Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = quoteTableView.dequeueReusableCell(withIdentifier: "QuoteTableViewCell") as! QuoteTableViewCell;
        
        return cell;
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

extension AddAlarmViewController {
    func fetchAndReload() {
        do {
            quotes = try coreDataStack.managedContext.fetch(fetchRequest);
            quoteTableView.reloadData();
        } catch let error as NSError {
            print("Could not fetch \(error), \(error.userInfo)");
        }
    }
}
