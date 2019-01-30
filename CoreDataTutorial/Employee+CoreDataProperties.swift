//
//  Employee+CoreDataProperties.swift
//  CoreDataTutorial
//
//  Created by John Xiong on 10/16/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import Foundation
import CoreData

extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee");
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var id: Int16
    @NSManaged public var positions: NSOrderedSet?

}

// MARK: Generated accessors for positions
extension Employee {

    @objc(insertObject:inPositionsAtIndex:)
    @NSManaged public func insertIntoPositions(_ value: Position, at idx: Int)

    @objc(removeObjectFromPositionsAtIndex:)
    @NSManaged public func removeFromPositions(at idx: Int)

    @objc(insertPositions:atIndexes:)
    @NSManaged public func insertIntoPositions(_ values: [Position], at indexes: NSIndexSet)

    @objc(removePositionsAtIndexes:)
    @NSManaged public func removeFromPositions(at indexes: NSIndexSet)

    @objc(replaceObjectInPositionsAtIndex:withObject:)
    @NSManaged public func replacePositions(at idx: Int, with value: Position)

    @objc(replacePositionsAtIndexes:withPositions:)
    @NSManaged public func replacePositions(at indexes: NSIndexSet, with values: [Position])

    @objc(addPositionsObject:)
    @NSManaged public func addToPositions(_ value: Position)

    @objc(removePositionsObject:)
    @NSManaged public func removeFromPositions(_ value: Position)

    @objc(addPositions:)
    @NSManaged public func addToPositions(_ values: NSOrderedSet)

    @objc(removePositions:)
    @NSManaged public func removeFromPositions(_ values: NSOrderedSet)

}
