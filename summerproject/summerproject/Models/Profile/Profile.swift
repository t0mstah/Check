//
//  Profile.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation
import UIKit

// TODO: Add facebook, twitter, signup with email profiles etc.
class Profile : ProfileProtocol {

    var application: ApplicationProtocol?

    var username: String = ""
    var password: String = ""
    var email: String = ""

    var id: String? = ""
    var profilePicture : UIImage?
    var name: String = ""
    var biography : String = ""
    var phoneNumber: String = ""
    var checkPoints: Int = 0
    var isCheckVerified: Bool = false
    var reviews: [Review]?
    var settings: Settings?


    // MARK: Constructor

    init(username: String, password : String, email: String,
         id: String, profilePicture: UIImage?, name: String, biography: String,
         phoneNumber : String, checkPoints : Int, isCheckVerified : Bool,
         reviews: [Review]?, settings: Settings?) {

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
    }

    // MARK: Login/signup interface
    
    func signup() -> Bool {
        return application!.backendService!.signUpParseProfile(self)
    }
    
    func isLoggedIn() -> Bool {
        return application!.backendService!.isParseLoggedIn()
    }
    
    func login() -> Bool {
        return application!.backendService!.loginParseProfile(self)
    }
    
    func logout() -> Bool {
        return application!.backendService!.logoutParseProfile(self)
    }

    // MARK: Profile interface.

    func getProfile() -> Profile {
        
        if application!.isUsingParse {
            return application!.backendService!.getParseProfile()
        }
        
        return self
    }
    
    func removeProfile() {
        
        if application!.isUsingParse {
            application!.backendService!.removeParseProfile()
        }
    }
    
    // MARK: Review interface
    
    func getReviews() -> [Review]? {
        
        if application!.isUsingParse {
            return application!.backendService!.getParseReviews(self)
        }
        return nil
    }
    
    func addReview(review: Review) {
    
        if application!.isUsingParse {
            application!.backendService!.addParseReview(self, userReview: review)
        }
    }
    
    func updateReview(review: Review) {
        
        if application!.isUsingParse {
            application!.backendService!.updateParseReview(self, userReview: review)
        }
    }
    
    func removeReview(review: Review) {
        
        if application!.isUsingParse {
            application!.backendService!.removeParseReview(self, userReview: review)
        }
    }
}