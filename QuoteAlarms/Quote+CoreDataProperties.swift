//
//  Quote+CoreDataProperties.swift
//  QuoteAlarms
//
//  Created by John Xiong on 10/21/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import Foundation
import CoreData


extension Quote {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Quote> {
        return NSFetchRequest<Quote>(entityName: "Quote");
    }

    @NSManaged public var quoteName: String?
    @NSManaged public var quoteSaying: String?

}
