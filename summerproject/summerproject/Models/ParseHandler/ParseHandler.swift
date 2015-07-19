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
    
    
    func addParseProfile(userProfile: Profile, parseProfileObjectName: String) {
        let userParseProfile = PFObject(className: parseProfileObjectName)
        
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
        
        userProfile.id = userParseProfile.objectId
    }
    
    func updateParseProfile(userProfile: Profile, parseProfileObjectName: String, parseProfileObjectId: String?) {
        
        var query = PFQuery(className: parseProfileObjectName)
        query.getObjectInBackgroundWithId(parseProfileObjectId!) {
            (userParseProfile: PFObject?, error: NSError?) -> Void in
            
            if error != nil {
                println(error)
            }
            else if let userParseProfile = userParseProfile {
                
                userParseProfile["profilePicture"] = userProfile.profilePicture
                userParseProfile["name"] = userProfile.name
                userParseProfile["biography"] = userProfile.biography
                userParseProfile["phoneNumber"] = userProfile.phoneNumber
                userParseProfile["checkPoints"] = userProfile.checkPoints
                userParseProfile["isCheckVerified"] = userProfile.checkPoints
                userParseProfile["reviews"] = userProfile.reviews
                userParseProfile["settings"] = userProfile.settings

                userParseProfile.saveInBackground()
            }
        }
        // error check - Parse profile does not exist.
    }
    
    func deleteParseProfile(parseProfileObjectName: String, parseProfileObjectId: String?) {
        
        // error check - Parse profile does not exist.
        
        var query = PFQuery(className: parseProfileObjectName)
        query.getObjectInBackgroundWithId(parseProfileObjectId!) {
            (userParseProfile: PFObject?, error: NSError?) -> Void in
            
            if error == nil && userParseProfile != nil {
                
                userParseProfile?.deleteInBackground()
                
            } else {
                println("Error occured while deleting Parse Profile")
            }
        }
    }
    
    func getParseProfile(parseProfileObjectName : String, parseProfileObjectId: String?) -> Profile {
        
        var userProfile = Profile()

        var query = PFQuery(className: parseProfileObjectName)
        query.getObjectInBackgroundWithId(parseProfileObjectId!) {
            (userParseProfile: PFObject?, error: NSError?) -> Void in
            
            if error == nil && userParseProfile != nil {
                
//                userProfile.profilePicture = userParseProfile["profilePicture"] as! String
//                userProfile.name = userParseProfile["name"] as! String
//                userProfile.biography = userParseProfile["biography"] as! String
//                userProfile.phoneNumber = userParseProfile["phoneNumber"] as! String
//                userProfile.checkPoints = userParseProfile["checkPoints"] as! Int
//                userProfile.isCheckVerified = userParseProfile["isCheckVerified"] as! Bool
//                userProfile.reviews = userParseProfile["reviews"] as! String
//                userProfile.settings = userParseProfile["settings"] as! String
                
            } else {
                println("Error occured while fetching ParseProfile")
            }
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