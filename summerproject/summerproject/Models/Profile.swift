//
//  Profile.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation
import Parse

// TODO: Add facebook profiles etc.
class Profile : ProfileProtocol {

    // Constructor for the created user.
    init(name: String, phoneNumber: String) {
        
    }

    // EFFECTS: Returns the user profile
    func getProfile(userProfile: String) -> Void {
        let userProfile = PFObject(className: userProfile as String)
        userProfile["biography"] = "Hi, I am biography."
        userProfile["rewardPoints"] = 10
        
        userProfile.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            println("User Profile has been saved.")
        }
    }
}
