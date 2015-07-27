//
//  Reviews.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

// import Foundation

class Review : ReviewProtocol {
    
    //    var time: NSDate { get set }
    var reviewId = 0
    var reviewer: Profile
    var description : String = ""
    
    // Constructor.
    init(reviewer: Profile, description: String) {
        self.reviewer = reviewer
        self.description = description
    }
}