//
//  PeopleViewController.swift
//  WhosThatAgain
//
//  Created by John Xiong on 8/3/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit

class PeopleViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var personTableView: UITableView!
    
    var persons: [Person] = [Person(firstName: "John", lastName: "Xiong",location: "Lansing, MI"), Person(firstName: "Nalee", lastName: "Vang")];
    var selectedPerson: Person?;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: UITableViewDelegate Methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let personCell = personTableView.dequeueReusableCellWithIdentifier("PersonTableViewCell", forIndexPath: indexPath) as! PersonTableViewCell;
        
        let person = persons[indexPath.row];
        personCell.personNameLabel.text = person.fullName;
        
        if person.location != nil {
            personCell.personLocationLabel.text = person.location!;
        }
        
        if person.image != nil {
            personCell.personImage.image = person.image;
        } else {
            //let fileURL = NSBundle.mainBundle().URLForResource("defaultPersonImage", withExtension: "png")
            //let defaultImage = CIImage(contentsOfURL: fileURL!)
            //personCell.personImage.image = UIImage(CGImage: defaultImage);
        }
        
        
        return personCell;
    }
    
    func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath) {
        selectedPerson = persons[indexPath.row];
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "PersonCellToPersonDetail" {
            if let personDetailViewController = segue.destinationViewController as? PersonDetailViewController {
                personDetailViewController.person = selectedPerson!;
            }
        }
    }

}
