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

    var username: String = ""
    var password: String = ""
    var email: String = ""

    var id: String? = ""
    var profilePicture : String = ""
    var name: String = ""
    var biography : String = ""
    var phoneNumber: String = ""
    var checkPoints: Int = 0
    var isCheckVerified: Bool = false
    var reviews: Reviews?
    var settings: Settings?

    var isUsingParse: Bool = true
    var backendService: ParseHandler?

    init(username: String, password : String, email: String,
         id: String, profilePicture: String, name: String, biography: String, phoneNumber : String,
        checkPoints : Int, isCheckVerified : Bool, reviews: Reviews?, settings: Settings?) {

        self.username = username
        self.password = password
        self.email = email

        self.id = id
        self.profilePicture = profilePicture
        self.name = name
        self.biography = biography
        self.phoneNumber = phoneNumber
        self.checkPoints = checkPoints
        self.isCheckVerified = isCheckVerified
        self.reviews = reviews
        self.settings = settings
            
        isUsingParse = true // Use Parse for all profile stores.
        backendService = ParseHandler()
    }

    func getProfile() -> Profile {
        
        if isUsingParse {
            return backendService!.getParseProfile()
        }
        
        return self
    }
    
    func updateProfile() {
        
        // TODO: error check - user profile does not exist.
        if isUsingParse {
            backendService!.updateParseProfile(self)
        }
    }
    
    func removeProfile(userProfile: Profile) {
        
        // TODO: error check - user profile does not exist.
        if isUsingParse {
            backendService!.removeParseProfile()
        }
    }
    
}
