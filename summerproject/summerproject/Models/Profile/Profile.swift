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
    var reviews: [Review]?
    var settings: Settings?

    var isUsingParse: Bool = true
    
    var settingsService: Settings?
    var backendService: ParseHandler?

    // MARK: Constructor.

    init(username: String, password : String, email: String,
         id: String, profilePicture: String, name: String, biography: String, phoneNumber : String,
        checkPoints : Int, isCheckVerified : Bool, reviews: [Review]?, settings: Settings?) {

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
            
        // Services for reviews, settings and the Parse handler.
        settingsService = Settings()
        backendService = ParseHandler()
    }

    // MARK: Login/signup interface.
    
    func signup() -> Bool {
        return backendService!.signUpParseProfile(self)
    }
    
    func isLoggedIn() -> Bool {
        return backendService!.isParseLoggedIn()
    }
    
    func login() -> Bool {
        return backendService!.loginParseProfile(self)
    }
    
    func logout() -> Bool {
        return backendService!.logoutParseProfile(self)
    }

    // MARK: Profile interface.

    func getProfile() -> Profile {
        
        if isUsingParse {
            return backendService!.getParseProfile()
        }
        
        return self
    }
    
    func removeProfile() {
        
        // TODO: error check - user profile does not exist.
        if isUsingParse {
            backendService!.removeParseProfile()
        }
    }
    
    // MARK: Review interface.
    
    func getReviews() -> [Review]? {
        
        return backendService!.getParseReviews(self)
    }
    
    func addReview(review: Review) {
    
        if isUsingParse {
            backendService!.addParseReview(self, userReview: review)
        }
    }
    
    func updateReview(review: Review) {
        
        if isUsingParse {
            backendService!.updateParseReview(self, userReview: review)
        }
    }
    
    func removeReview(review: Review) {
        
        if isUsingParse {
            backendService!.removeParseReview(self, userReview: review)
        }
    }
}
