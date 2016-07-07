//
//  Swap.swift
//  CookieCrunch
//
//  Created by John Xiong on 7/5/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import Foundation

struct Swap : CustomStringConvertible {
    let cookieA: Cookie;
    let cookieB: Cookie;
    
    init(cookieA: Cookie, cookieB: Cookie) {
        self.cookieA = cookieA;
        self.cookieB = cookieB;
    }
    
    var description: String {
        return "swap \(cookieA) with \(cookieB)";
    }
    
    
}