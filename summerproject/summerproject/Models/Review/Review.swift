//
//  Reviews.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation

class Review : ReviewProtocol {
    
    var timeCreated: NSDate
    var lastUpdated: NSDate
    var reviewId = ""
    var reviewer: Profile
    var description : String = ""

    // Constructor.
    init(reviewer: Profile, description: String) {
        self.timeCreated = NSDate()
        self.lastUpdated = self.timeCreated
        self.reviewer = reviewer
        self.description = description
        
        // TODO: Call necessary Parse stuff.
    }
    
    init(timeCreated: NSDate, lastUpdated: NSDate, reviewId : String, reviewer: Profile, description: String) {
        self.timeCreated = timeCreated
        self.lastUpdated = lastUpdated
        self.reviewId = reviewId
        self.reviewer = reviewer
        self.description = description
    }
}