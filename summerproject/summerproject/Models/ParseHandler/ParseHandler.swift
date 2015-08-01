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
    
    // MARK: Constants for the Parse profile keys
    private struct ParseProfileKeys {
        static let profilePicture = "profilePicture"
        static let name = "name"
        static let biography = "biography"
        static let phoneNumber = "phoneNumber"
        static let checkPoints = "checkPoints"
        static let isCheckVerified = "isCheckVerified"
        static let reviews = "reviews"
        static let settings = "settings"
    }

    var thisUser : Profile?
    
    init(thisUser: Profile) {
        self.thisUser = thisUser
    }

    func loginParseProfile(userProfile: Profile) -> Bool {
        
        var isSuccessfulLogin : Bool = false
        
        PFUser.logInWithUsernameInBackground(userProfile.username, password: userProfile.password) {
            (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                // Do stuff after successful login.
                isSuccessfulLogin = true
                println("Parse user login success.")
            } else {
                // The login failed. Check error to see why.
                isSuccessfulLogin = false
                println("Parse user login failed.")
            }
        }
        return isSuccessfulLogin
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
        
        //userParseProfile[ParseProfileKeys.profilePicture] = userProfile.profilePicture
        userParseProfile[ParseProfileKeys.profilePicture] = userProfile.name
        userParseProfile[ParseProfileKeys.biography] = userProfile.biography
        userParseProfile[ParseProfileKeys.phoneNumber] = userProfile.phoneNumber
        userParseProfile[ParseProfileKeys.checkPoints] = userProfile.checkPoints
        userParseProfile[ParseProfileKeys.isCheckVerified] = userProfile.isCheckVerified
//        userParseProfile[ParseProfileKeys.reviews] = userProfile.reviews
//        userParseProfile[ParseProfileKeys.settings] = userProfile.settings
        userParseProfile[ParseProfileKeys.reviews] = "reviews"
        userParseProfile[ParseProfileKeys.settings] = "settings"
        
        userParseProfile.signUpInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            println("Parse user profile signed up successfully.")
        }
        
        userProfile.id = userParseProfile.objectId
        
        return true
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
    
    
    // MARK: Facebook interface in Parse
    
    
    func loginParseFacebookProfile(userProfile: Profile) -> Bool {
        
        return FacebookProfile().loginWithReadPermissions()
    }

    func linkParseProfileToFacebook(userProfile: Profile) -> Bool {
        
        var isSuccessfulLinking = false
//        if !PFFacebookUtils.isLinkedWithUser(user) {
//            PFFacebookUtils.linkUserInBackground(user, withReadPermissions: nil, {
//                (succeeded: Bool?, error: NSError?) -> Void in
//                if succeeded {
//                    println("Woohoo, the user is linked with Facebook!")
//                }
//            })
//        }
        
        return isSuccessfulLinking
    }
    
    func unlinkParseProfileToFacebook(userProfile: Profile) -> Bool {
        
        var isSuccessfulUnlinking = false
//        PFFacebookUtils.unlinkUserInBackground(user, {
//            (succeeded: Bool?, error: NSError?) -> Void in
//            if succeeded {
//                println("The user is no longer associated with their Facebook account.")
//            }
//        })
        
        return isSuccessfulUnlinking
    }
    
    func findAllParseProfilesInRegion(userLocation: Location) -> [Profile]? {
        return nil //FacebookProfile().findAllFacebookProfilesInRegion(userLocation)
    }
    
    // MARK: Username interface in Parse
    
    // REQUIRES: A user profile and a new password.
    // EFFECTS: Changes the user's username in Parse.
    func changeParseUsername(newUsername: String) {
        var userParseProfile = PFUser.currentUser()
        
        if (userParseProfile == nil) {
            loginParseProfile(thisUser!)
        }
        
        thisUser!.username = newUsername
        userParseProfile!.username = newUsername
    }
    
    
    // MARK: Password interface in Parse
    
    func resetParsePassword(userProfile: Profile) {
        PFUser.requestPasswordResetForEmailInBackground(userProfile.email)
    }
    
    // REQUIRES: A user profile and a new password.
    // EFFECTS: Changes the user's password in Parse.
    func changeParsePassword(newPassword: String) {
        var userParseProfile = PFUser.currentUser()
        
        if (userParseProfile == nil) {
            loginParseProfile(thisUser!)
        }
        
        thisUser!.password = newPassword
        userParseProfile!.password = newPassword
    }
    
    
    // MARK: Email interface in Parse
    
    
    // REQUIRES: A user profile and a new email address.
    // EFFECTS: Changes the user's email in Parse.
    func changeParseEmail(newEmail: String) {
        
        var userParseProfile = PFUser.currentUser()
        
        if (userParseProfile == nil) {
            loginParseProfile(thisUser!)
        }
        
        userParseProfile!.email = newEmail
    }
    
    
    // MARK: Name interface in Parse
    
    
    // REQUIRES: A user profile and a new name.
    // EFFECTS: Changes the user's name in Parse.
    func changeParseName(newName: String) {
        
        var userParseProfile = PFUser.currentUser()
        
        if (userParseProfile == nil) {
            loginParseProfile(thisUser!)
        }
        
        userParseProfile![ParseProfileKeys.name] = newName
    }
    
    
    // MARK: Biography interface in Parse.
    
    
    // REQUIRES: A user profile and a new biography.
    // EFFECTS: Changes the user's biography in Parse.
    func changeParseBiography(newBiography:String) {
        
        var userParseProfile = PFUser.currentUser()
        
        if (userParseProfile == nil) {
            loginParseProfile(thisUser!)
        }
        
        userParseProfile![ParseProfileKeys.biography] = newBiography
    }
    
    
    // MARK: Phone number interface in Parse.
    
    
    // REQUIRES: A user profile and a new phone number.
    // EFFECTS: Changes the user's phone number.
    func changeParsePhoneNumber(newPhoneNumber: String) {
        
        var userParseProfile = PFUser.currentUser()
        
        if (userParseProfile == nil) {
            loginParseProfile(thisUser!)
        }
        
        userParseProfile![ParseProfileKeys.phoneNumber] = newPhoneNumber
    }
    
    
    // MARK: Checkpoints interface in Parse.
    
    
    // REQUIRES: A user profile and check point value.
    // EFFECTS: Increments the check points on the particular user.
    func addParseCheckPoints(checkPointsValue: Int) {
        
        var userParseProfile = PFUser.currentUser()
        
        if (userParseProfile == nil) {
            loginParseProfile(thisUser!)
        }
        
        //userParseProfile![ParseProfileKeys.checkPoints] += checkPointsValue
    }
    
    
    // REQUIRES: A user profile and check point value.
    // EFFECTS: Decrements the check points on the particular user.
    func subtractParseCheckPoints(checkPointsValue: Int) {
        
        var userParseProfile = PFUser.currentUser()
        
        if (userParseProfile == nil) {
            loginParseProfile(thisUser!)
        }
        
        //userParseProfile![ParseProfileKeys.checkPoints] -= checkPointsValue
    }
    
    
    // MARK: IsCheckVerified interface in Parse.
    
    
    // REQUIRES: A user profile.
    // EFFECTS: Sets the user to be check verified.
    func addParseCheckVerified() {
        
        var userParseProfile = PFUser.currentUser()
        
        if (userParseProfile == nil) {
            loginParseProfile(thisUser!)
        }
        
        userParseProfile![ParseProfileKeys.isCheckVerified] = true
    }
    
    // REQUIRES: A user profile.
    // EFFECTS: Removes check verified status from the user.
    func removeParseCheckVerified() {
        
        var userParseProfile = PFUser.currentUser()
        
        if (userParseProfile == nil) {
            loginParseProfile(thisUser!)
        }
        
        userParseProfile![ParseProfileKeys.isCheckVerified] = false
    }
    
    
    // MARK: Reviews stored in Parse.
    

    func addParseReview(userProfile: Profile, userReview: Review) {
        var userParseProfile = PFUser.currentUser()
        
        if (userParseProfile == nil) {
            loginParseProfile(userProfile)
        }
        
        // TODO: Query for user and then add this review.
        userParseProfile![ParseProfileKeys.reviews] = userProfile.reviews
    }
    
    func removeParseReview(userProfile: Profile, userReview: Review) {
        
    }
    
    func updateParseReview(userProfile: Profile, userReview: Review) {

    }
    
    func getParseReviews(userProfile: Profile) -> [Review]? {
        
        return nil
    }
    
    // Settings stored in Parse.
    func addParseSettings(userSettings: Settings) {
        
    }
    
    func updateParseSettings(userSettings: Settings) {
        
    }
}