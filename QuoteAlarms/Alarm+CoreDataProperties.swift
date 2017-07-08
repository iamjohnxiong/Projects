//
//  Alarm+CoreDataProperties.swift
//  QuoteAlarms
//
//  Created by John Xiong on 10/21/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import Foundation
import CoreData

extension Alarm {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Alarm> {
        return NSFetchRequest<Alarm>(entityName: "Alarm");
    }

    @NSManaged public var alarmName: String?
    @NSManaged public var time: NSDate?
    @NSManaged public var quotes: NSOrderedSet?

}

// MARK: Generated accessors for quotes
extension Alarm {

    @objc(insertObject:inQuotesAtIndex:)
    @NSManaged public func insertIntoQuotes(_ value: Quote, at idx: Int)

    @objc(removeObjectFromQuotesAtIndex:)
    @NSManaged public func removeFromQuotes(at idx: Int)

    @objc(insertQuotes:atIndexes:)
    @NSManaged public func insertIntoQuotes(_ values: [Quote], at indexes: NSIndexSet)

    @objc(removeQuotesAtIndexes:)
    @NSManaged public func removeFromQuotes(at indexes: NSIndexSet)

    @objc(replaceObjectInQuotesAtIndex:withObject:)
    @NSManaged public func replaceQuotes(at idx: Int, with value: Quote)

    @objc(replaceQuotesAtIndexes:withQuotes:)
    @NSManaged public func replaceQuotes(at indexes: NSIndexSet, with values: [Quote])

    @objc(addQuotesObject:)
    @NSManaged public func addToQuotes(_ value: Quote)

    @objc(removeQuotesObject:)
    @NSManaged public func removeFromQuotes(_ value: Quote)

    @objc(addQuotes:)
    @NSManaged public func addToQuotes(_ values: NSOrderedSet)

    @objc(removeQuotes:)
    @NSManaged public func removeFromQuotes(_ values: NSOrderedSet)

}
