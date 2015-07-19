//
//  Profile.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation

// TODO: Add facebook, twitter, signup with email profiles etc.
class Profile : ProfileProtocol {

    var profilePicture : String = ""
    var name: String = ""
    var biography : String = ""
    var phoneNumber: String = ""
    var checkPoints: Int = 0
    var isCheckVerified: Bool = false
    var reviews: Reviews
    var settings: Settings

    // Constructor for the created user.
    init(profilePicture: String, name: String, biography: String, phoneNumber : String,
        checkPoints : Int, isCheckVerified : Bool, reviews: Reviews, settings: Settings) {

        self.profilePicture = profilePicture
        self.name = name
        self.biography = biography
        self.phoneNumber = phoneNumber
        self.checkPoints = checkPoints
        self.isCheckVerified = isCheckVerified
        self.reviews = reviews
        self.settings = settings
    }

    func getProfile(userProfile: String) -> Profile {
        
        return ParseHandler().getParseProfile()
    }
    
    func updateProfile() -> Void {
    }
    
    func removeProfile(userProfile: Profile) {
        
        // TODO: error check - user profile does not exist.
    }
    
}
