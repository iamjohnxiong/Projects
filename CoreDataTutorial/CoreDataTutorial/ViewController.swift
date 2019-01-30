//
//  ViewController.swift
//  CoreDataTutorial
//
//  Created by John Xiong on 10/16/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit
import CoreData;

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: IBActions
    @IBAction func addButtonClicked(_ sender: AnyObject) {
        // Insert a new Walk entity into Core Data
        let position = Position(context: managedContext);
        position.name = "CEO";
        
        // Insert the new Walk into the Dog's walks set
        if let employee = currentEmployee,
            let positions = employee.positions?.mutableCopy() as? NSMutableOrderedSet {
            positions.add(position)
            employee.positions = positions;
        }
        // Save the managed object context
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Save error: \(error),description: \(error.userInfo)")
        }
        
        // Reload table view
        tableView.reloadData()
    }
    
    
    // MARKL IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    
    var employees: [NSManagedObject] = [];
    var currentEmployee: Employee?;
    
    var managedContext: NSManagedObjectContext!;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let employeeName: String = "John";
        let employeeFetch: NSFetchRequest<Employee> = Employee.fetchRequest();
        employeeFetch.predicate = NSPredicate(format: "%K == %@", #keyPath(Employee.firstName), employeeName);
        
        do {
            let results = try managedContext.fetch(employeeFetch);
            if results.count > 0 {
                // Fido found, use Fido
                currentEmployee = results.first;
            } else {
                // Fido not found, create Fido
                currentEmployee = Employee(context: managedContext);
                currentEmployee?.firstName = employeeName;
                try managedContext.save();
            }
        } catch let error as NSError {
            print("Fetch error: \(error) description: \(error.userInfo)");
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: UITableViewDelegate Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        guard let positions = currentEmployee?.positions else {
            return 1;
        }
        
        return positions.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        guard let position = currentEmployee?.positions?[indexPath.row] as? Position else {
            return cell!
        }
        
        cell?.textLabel?.text = position.name;
        return cell!;
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true;
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        guard let positionToRemove = currentEmployee?.positions?[indexPath.row] as? Position,
            editingStyle == .delete
            else {
                return;
            }
        
        managedContext.delete(positionToRemove);
        
        do {
            try managedContext.save();
        } catch let error as NSError {
            print("Saving error: \(error), description: \(error.userInfo)");
        }
        //tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    

}

