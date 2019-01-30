//
//  Position+CoreDataProperties.swift
//  CoreDataTutorial
//
//  Created by John Xiong on 10/16/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import Foundation
import CoreData


extension Position {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Position> {
        return NSFetchRequest<Position>(entityName: "Position");
    }

    @NSManaged public var name: String?

}
