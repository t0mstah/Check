//
//  UserProfileController.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/12/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation
import Parse

// REQUIRES: A user profile.
// EFFECTS: Returns true.
func addUser(userProfile: String) -> Bool {

    let userProfile = PFObject(className: userProfile as String)
    userProfile["biography"] = "Hi, I am biography."
    userProfile["rewardPoints"] = 10
    
    userProfile.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
        println("User Profile has been saved.")
    }
    return true
}