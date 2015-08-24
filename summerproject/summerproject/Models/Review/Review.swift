//
//  Reviews.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation

class Review : ReviewProtocol {
    
    var time: NSDate
    var reviewId = 0
    var reviewer: Profile
    var description : String = ""

    // Constructor.
    init(reviewer: Profile, description: String) {
        self.time = NSDate()
        self.reviewer = reviewer
        self.description = description
    }
}