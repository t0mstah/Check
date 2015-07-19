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
    
    
    func addParseProfile(userReview: Profile) -> Void {
        
    }
    
    func updateParseProfile(userProfile: Profile) -> Void  {
        
    }
    
    func deleteParseProfile(userProfile: Profile) -> Void  {
        
    }
    
    func getParseProfile() -> Profile {
        
//        var profile: String
//        let userParseProfile = PFObject(className: profile as String)
//
//        // Populate userProfile object.
//        
//        userProfile.profilePicture = userParseProfile["profilePicture"]
//        userProfile.name = userParseProfile["name"]
//        userProfile.biography = userParseProfile["biography"]
//        userProfile.phoneNumber = userParseProfile["phoneNumber"]
//        userProfile.checkPoints = userParseProfile["checkPoints"]
//        userProfile.isCheckVerified = userParseProfile["isCheckVerified"]
//        userProfile.reviews = userParseProfile["reviews"]
//        userProfile.settings = userParseProfile["settings"]
//
//        userProfile.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
//            println("User Profile has been saved.")
//        }
        
        var userProfile: Profile?
        return userProfile!
    }
    
    // Reviews stored in Parse.
    func addParseReview(userReview: Reviews) -> Void  {
        
    }
    
    func removeParseReview(userReview: Reviews) -> Void  {
        
    }
    
    func updateParseReview(userReview: Reviews) -> Void  {
        
    }
    
    func getParseReview() -> Reviews {
        
        return Reviews()
    }
    
    // Settings stored in Parse.
    func addParseSettings(userProfile: Settings) -> Void  {
        
    }
    
    func updateParseSettings(userProfile: Settings) -> Void  {
        
    }
    
}