//
//  UserProfile.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/12/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

// This Profile protocol will handle anything that has to do with user's online
// profiles. Examples: Facebook, Twitter, Login with Email etc.

import Foundation
import Parse

protocol ProfileProtocol {
    
    // TODO: Add profile data.

    // Profile pic.
    // About
    // Phone Number
    // Check Points


    // EFFECTS: Returns the user profile
    func getProfile(userProfile: String) -> Void
    
}




