//
//  File.swift
//  Check
//
//  Created by Zheng Hao Tan on 7/19/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation

protocol ParseHandlerProtocol {
    
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
    
    
    // MARK: Current user status interface in Parse.
    
    
    // EFFECTS: Returns true if the user is still currently logged in, false otherwise.
    func isParseLoggedIn() -> Bool
    
    // REQUIRES: A user profile.
    // EFFECTS: Resets the password of the user
    func resetParsePassword(userProfile: Profile)

    
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