//
//  UserProfile.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/12/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation
import Parse

protocol UserProfileProtocol {

    // REQUIRES: A user profile.
    // EFFECTS: Returns true if user is created successfully, false otherwise.
    func addUser(userProfile: String) -> Bool
    
    
    func editUser(UserProfile: String) -> Bool
    
    // REQUIRES: A valid user.
    // EFFECTS: Returns true if user is successfully deleted, false otherwise.
    func removeUser(userProfile: String) -> Bool
}

class UserProfile : UserProfileProtocol {
    
    func addUser(userProfile: String) -> Bool {
        
        let userProfile = PFObject(className: userProfile as String)
        userProfile["biography"] = "Hi, I am biography."
        userProfile["rewardPoints"] = 10
        
        userProfile.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            println("User Profile has been saved.")
        }
        return true
    }
    
    func editUser(UserProfile: String) -> Bool {
        
        return true
    }
    
    
    func removeUser(userProfile: String) -> Bool {
        return true
    }
}




