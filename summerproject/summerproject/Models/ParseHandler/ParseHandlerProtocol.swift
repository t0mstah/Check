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
    // EFFECTS: Updates the Parse profile stored in the cloud.
    func updateParseProfile(userProfile: Profile)
    
    // REQUIRES: A user profile.
    // EFFECTS: Deletes the Parse profile.
    func removeParseProfile()
 
    // REQUIRES: The user must be logged in.
    // EFFECTS: Returns the Parse profile.
    func getParseProfile() -> Profile
    
    // MARK: Current user status checks.
    
    // EFFECTS: Returns true if the user is still currently logged in, false otherwise.
    func isParseLoggedIn() -> Bool
    
    // REQUIRES: A user profile.
    // EFFECTS: Resets the password of the user
    func resetParsePassword(userProfile: Profile)

    
    // MARK: Reviews stored in Parse.
    
    
    func addParseReview(userReview: Reviews)
    
    func removeParseReview(userReview: Reviews)
    
    func updateParseReview(userReview: Reviews)
    
    func getParseReview() -> Reviews


    // MARK: Settings stored in Parse.
    func addParseSettings(userProfile: Settings)
    
    func updateParseSettings(userProfile: Settings)
}