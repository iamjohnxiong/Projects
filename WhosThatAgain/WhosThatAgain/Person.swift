//
//  Person.swift
//  WhosThatAgain
//
//  Created by John Xiong on 8/3/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit;

class Person {
    var firstName: String;
    var lastName: String?;
    var location: String?;
    var locationMet: String?
    var image: UIImage?;
    
    init(firstName: String) {
        self.firstName = firstName;
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName;
        self.lastName = lastName;
    }
    
    init(firstName: String, lastName: String, location: String) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.location = location;
    }
    
    init(firstName: String, lastName: String, location: String, locationMet: String) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.location = location;
        self.locationMet = locationMet;
    }
    
    init(firstName: String, lastName: String, image: UIImage) {
        self.firstName = firstName;
        self.lastName = lastName;
        self.image = image;
    }
}

extension Person {
    var fullName: String {
        var fullName = self.firstName;
        if self.lastName != nil {
            fullName += " " + self.lastName!;
        }
        return fullName;
    }
}