//
//  File.swift
//  Check
//
//  Created by Zheng Hao Tan on 7/19/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation

protocol ParseHandlerProtocol {
    
    var thisUser: Profile? { get set }
    
    // MARK: Login user profile in Parse.
    
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful login, false otherwise.
    func loginParseProfile(userProfile: Profile) -> Bool
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful logout, false otherwise.
    func logoutParseProfile(userProfile: Profile) -> Bool
    
    // REQUIRES: A user profile.
    // EFFECTS: Adds a new user profile in Parse. Returns true on successful signup, false otherwise.
    func signUpParseProfile(userProfile: Profile) -> Bool
    
    // REQUIRES: A user profile.
    // EFFECTS: Deletes the Parse profile.
    func removeParseProfile()
 
    // REQUIRES: The user must be logged in.
    // EFFECTS: Returns the Parse profile.
    func getParseProfile() -> Profile
    
    
    // MARK: Facebook user profile in Parse.
    
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful Facebook login/signup, false otherwise.
    func loginParseFacebookProfile(userProfile: Profile) -> Bool
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful linking of Parse and Facebook profiles.
    func linkParseProfileToFacebook(userProfile: Profile) -> Bool
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful unlinking of Parse and Facebook profiles.
    func unlinkParseProfileToFacebook(userProfile: Profile) -> Bool
    
    // MARK: Current user status interface in Parse.
    
    
    // EFFECTS: Returns true if the user is still currently logged in, false otherwise.
    func isParseLoggedIn() -> Bool
    
    
    // MARK: Username interface in Parse.
    
    // REQUIRES: A user profile and a new password.
    // EFFECTS: Changes the user's username in Parse.
    func changeParseUsername(newUsername: String)

    
    // MARK: Password interface in Parse.
    
    
    // REQUIRES: A user profile and a new password.
    // EFFECTS: Changes the user's password in Parse.
    func changeParsePassword(newPassword: String)
    
    
    // REQUIRES: A user profile.
    // EFFECTS: Resets the password of the user in Parse.
    func resetParsePassword(userProfile: Profile)
    
    
    // MARK: Email interface in Parse.
    
    
    // REQUIRES: A user profile and a new email address.
    // EFFECTS: Changes the user's email in Parse.
    func changeParseEmail(newEmail: String)
    
    
    // MARK: Name interface in Parse.
    
    
    // REQUIRES: A user profile and a new name.
    // EFFECTS: Changes the user's name in Parse.
    func changeParseName(newName: String)

    
    // MARK: Biography interface in Parse.
    
    
    // REQUIRES: A user profile and a new biography.
    // EFFECTS: Changes the user's biography in Parse.
    func changeParseBiography(newBiography:String)
    
    
    // MARK: Phone number interface in Parse.
    
    
    // REQUIRES: A user profile and a new phone number.
    // EFFECTS: Changes the user's phone number.
    func changeParsePhoneNumber(newPhoneNumber: String)
    
    
    // MARK: Checkpoints interface in Parse.
    
    
    // REQUIRES: A user profile and check point value.
    // EFFECTS: Increments the check points on the particular user.
    func addParseCheckPoints(checkPointsValue: Int)

    
    // REQUIRES: A user profile and check point value.
    // EFFECTS: Decrements the check points on the particular user.
    func subtractParseCheckPoints(checkPointsValue: Int)
    
    
    // MARK: IsCheckVerified interface in Parse.
    
    // REQUIRES: A user profile.
    // EFFECTS: Sets the user to be check verified.
    func addParseCheckVerified()
    
    // REQUIRES: A user profile.
    // EFFECTS: Removes check verified status from the user.
    func removeParseCheckVerified()
    
    
    // MARK: Reviews interface in Parse.
    
    
    // REQUIRES: A user profile.
    // EFFECTS: Appends a new review for the user in Parse.
    func addParseReview(userProfile: Profile, userReview: Review)
    
    // REQUIRES: A user profile.
    // EFFECTS: Removes a review for the user in Parse.
    func removeParseReview(userProfile: Profile, userReview: Review)
    
    // REQUIRES: A user profile.
    // EFFECTS: Updates a review for the user in Parse.
    func updateParseReview(userProfile: Profile, userReview: Review)
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns the user's reviews in Parse.
    func getParseReviews(userProfile: Profile) -> [Review]?


    // MARK: Settings interface in Parse.
    

    func addParseSettings(userSettings: Settings)
    
    func updateParseSettings(userSettings: Settings)
}