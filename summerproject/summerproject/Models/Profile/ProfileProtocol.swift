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

    var profilePicture : String { get set } // TODO: Not sure yet.
    var name: String { get set }
    var biography : String { get set }
    var phoneNumber: String { get set }
    var checkPoints: Int { get set }
    var isCheckVerified: Bool { get set }
    var reviews: Reviews { get set }
    var settings: Settings { get set }

    // EFFECTS: Returns the user profile
    func getProfile(userProfile: String) -> Profile
    
    // EFFECTS: Updates the user profile
    func editProfile(userProfile: Profile) -> Void
    
    // EFFECTS: Removes the user profile
    func removeProfile(userProfile: Profile) -> Void
}