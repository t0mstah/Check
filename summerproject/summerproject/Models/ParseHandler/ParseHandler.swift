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
    
    func loginParseProfile(userProfile: Profile) -> Bool {
        
        var isLogin : Bool = false
        
        PFUser.logInWithUsernameInBackground(userProfile.username, password: userProfile.password) {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                // Do stuff after successful login.
                isLogin = true
            } else {
                // The login failed. Check error to see why.
                isLogin = false
            }
        }
        return isLogin
    }
    
    func logoutParseProfile(userProfile: Profile) -> Bool {
        PFUser.logOut()
        return true
    }
    
    func signUpParseProfile(userProfile: Profile) -> Bool {
        
        let userParseProfile = PFUser()
        
        // Populate and add all user data into the Parse Profile.
        userParseProfile.username = userProfile.username
        userParseProfile.password = userProfile.password
        userParseProfile.email = userProfile.email
        
        userParseProfile["profilePicture"] = userProfile.profilePicture
        userParseProfile["name"] = userProfile.name
        userParseProfile["biography"] = userProfile.biography
        userParseProfile["phoneNumber"] = userProfile.phoneNumber
        userParseProfile["checkPoints"] = userProfile.checkPoints
        userParseProfile["isCheckVerified"] = userProfile.checkPoints
//        userParseProfile["reviews"] = userProfile.reviews
//        userParseProfile["settings"] = userProfile.settings
        userParseProfile["reviews"] = "reviews"
        userParseProfile["settings"] = "settings"
        
        userParseProfile.signUpInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            println("Parse user profile has been added successfully.")
        }
        
        userProfile.id = userParseProfile.objectId
        
        return true
    }
    
    func updateParseProfile(userProfile: Profile) {

        var userParseProfile = PFUser.currentUser()
        
        if (userParseProfile == nil) {
            loginParseProfile(userProfile)
        }
        
        userParseProfile!.username = userProfile.username
        userParseProfile!.password = userProfile.password
        userParseProfile!.email = userProfile.email
        
        userParseProfile!["profilePicture"] = userProfile.profilePicture
        userParseProfile!["name"] = userProfile.name
        userParseProfile!["biography"] = userProfile.biography
        userParseProfile!["phoneNumber"] = userProfile.phoneNumber
        userParseProfile!["checkPoints"] = userProfile.checkPoints
        userParseProfile!["isCheckVerified"] = userProfile.checkPoints
        userParseProfile!["reviews"] = userProfile.reviews
        userParseProfile!["settings"] = userProfile.settings
    }
    
    func removeParseProfile() {
        
        // error check - Parse profile does not exist.
        
        // TODO: Implement remove parse profile.
    }
    
    func getParseProfile() -> Profile {
        
        var userProfile : Profile?
        var userParseProfile = PFUser.currentUser()
        
        if userParseProfile != nil {
                
//            userProfile.profilePicture = userParseProfile["profilePicture"] as String
//            userProfile.name = userParseProfile["name"] as String
//            userProfile.biography = userParseProfile["biography"] as! String
//            userProfile.phoneNumber = userParseProfile["phoneNumber"] as! String
//            userProfile.checkPoints = userParseProfile["checkPoints"] as! Int
//            userProfile.isCheckVerified = userParseProfile["isCheckVerified"] as! Bool
//            userProfile.reviews = userParseProfile["reviews"] as! String
//            userProfile.settings = userParseProfile["settings"] as! String
            
        }
        else {
            println("Error occured while fetching ParseProfile")
        }

        return userProfile!
    }

    func isParseLoggedIn() -> Bool {
        return PFUser.currentUser() != nil
    }
    
    func resetParsePassword(userProfile: Profile) {
        
        PFUser.requestPasswordResetForEmailInBackground(userProfile.email)
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