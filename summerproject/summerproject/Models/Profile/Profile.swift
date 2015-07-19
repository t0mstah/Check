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

    var id: String?
    var profilePicture : String
    var name: String
    var biography : String
    var phoneNumber: String
    var checkPoints: Int
    var isCheckVerified: Bool
    var reviews: Reviews?
    var settings: Settings?

    var isUsingParse: Bool

    // Constructor for the created user.
    init () {
        id = ""
        profilePicture = ""
        name = ""
        biography = ""
        phoneNumber = ""
        checkPoints = 0
        isCheckVerified = false
        reviews = nil
        settings = nil
        
        isUsingParse = true
    }

    init(id: String, profilePicture: String, name: String, biography: String, phoneNumber : String,
        checkPoints : Int, isCheckVerified : Bool, reviews: Reviews, settings: Settings) {

        self.id = id
        self.profilePicture = profilePicture
        self.name = name
        self.biography = biography
        self.phoneNumber = phoneNumber
        self.checkPoints = checkPoints
        self.isCheckVerified = isCheckVerified
        self.reviews = reviews
        self.settings = settings
            
        isUsingParse = true
    }

    func getProfile(userProfile: String) -> Profile {
        
        if isUsingParse {
            return ParseHandler().getParseProfile(userProfile, parseProfileObjectId: self.id)
        }
        
        return ParseHandler().getParseProfile(userProfile, parseProfileObjectId: self.id)
    }
    
    func updateProfile(){
        
        // TODO: error check - user profile does not exist.
    }
    
    func removeProfile(userProfile: Profile) {
        
        // TODO: error check - user profile does not exist.
    }
    
}
