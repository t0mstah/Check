//
//  ReviewsProtocol.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

// This Review protocol will handle everything related to reviews on the user.

import Foundation

protocol ReviewProtocol {
    
    var timeCreated: NSDate { get set }
    var lastUpdated: NSDate { get set }
    var reviewId: String { get set }
    var reviewer: Profile { get set }
    var description: String { get set }
}