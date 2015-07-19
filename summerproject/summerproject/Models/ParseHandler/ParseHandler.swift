//
//  ParseHandler.swift
//  Check
//
//  Created by Zheng Hao Tan on 7/19/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation
import Parse

class ParseHandler: ParseHandlerProtocol {
    
    
    func addParseProfile(userProfile: Profile, parseProfileId: String) {
        let userParseProfile = PFObject(className: parseProfileId as String)
        
        // Populate and add all user data into the Parse Profile object.
        userParseProfile["profilePicture"] = userProfile.profilePicture
        userParseProfile["name"] = userProfile.name
        userParseProfile["biography"] = userProfile.biography
        userParseProfile["phoneNumber"] = userProfile.phoneNumber
        userParseProfile["checkPoints"] = userProfile.checkPoints
        userParseProfile["isCheckVerified"] = userProfile.checkPoints
        userParseProfile["reviews"] = userProfile.reviews
        userParseProfile["settings"] = userProfile.settings
        
        userParseProfile.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            println("Parse user profile has been added successfully.")
        }
    }
    
    func updateParseProfile(parseProfileId: String) {
        
        // error check - Parse profile does not exist.
    }
    
    func deleteParseProfile(parseProfileId: String) {
        
        // error check - Parse profile does not exist.
    }
    
    func getParseProfile(parseProfileId : String) -> Profile {
        
        var userProfile = Profile()
        
        let userParseProfile = PFObject(className: parseProfileId as String)

        // Populate userProfile object.
        
//        userProfile.profilePicture = userParseProfile["profilePicture"]
//        userProfile.name = userParseProfile["name"]
//        userProfile.biography = userParseProfile["biography"]
//        userProfile.phoneNumber = userParseProfile["phoneNumber"]
//        userProfile.checkPoints = userParseProfile["checkPoints"]
//        userProfile.isCheckVerified = userParseProfile["isCheckVerified"]
//        userProfile.reviews = userParseProfile["reviews"]
//        userProfile.settings = userParseProfile["settings"]

        userParseProfile.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            println("User Profile loaded successfully")
        }
        
        return userProfile
    }
    
    // Reviews stored in Parse.
    func addParseReview(userReview: Reviews) {
        
    }
    
    func removeParseReview(userReview: Reviews) {
        
    }
    
    func updateParseReview(userReview: Reviews) {
        
    }
    
    func getParseReview() -> Reviews {
        
        return Reviews()
    }
    
    // Settings stored in Parse.
    func addParseSettings(userProfile: Settings) {
        
    }
    
    func updateParseSettings(userProfile: Settings) {
        
    }
    
}