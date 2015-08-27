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
    var reviewIds: [String]?
    var settings: Settings?


    // MARK: Constructor
    init() {
        
    }

    init(username: String, password : String, email: String,
         id: String, profilePicture: UIImage?, name: String, biography: String,
         phoneNumber : String, checkPoints : Int, isCheckVerified : Bool,
         reviewIds: [String]?, settings: Settings?) {

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
        self.reviewIds = reviewIds
        self.settings = settings
    }

    // MARK: Review interface
    
    func getReviews() -> [Review]? {
        
        if application!.isUsingParse {
            return application!.backendService!.getParseReviews(self.reviewIds)
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
            application!.backendService!.updateParseReview("dwaoindwa", userReview: review)
        }
    }
    
    func removeReview(reviewId: String) {
        
        if application!.isUsingParse {
            application!.backendService!.removeParseReview(reviewId)
        }
    }
    
    
    // MARK: Settings interface
    
    
    func updateSettings(settings: Settings) {
       
    }
}