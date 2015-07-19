//
//  File.swift
//  Check
//
//  Created by Zheng Hao Tan on 7/19/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation

protocol ParseHandlerProtocol {
    
    // MARK: User profile interface stored in Parse.
    
    // REQUIRES: A user profile.
    // EFFECTS: Adds a new user profile in Parse.
    func addParseProfile(userReview: Profile) -> Void
    
    // REQUIRES: A user profile.
    // EFFECTS: Updates the Parse profile stored in the cloud.
    func updateParseProfile(userProfile: Profile) -> Void
    
    // REQUIRES: A user profile.
    // EFFECTS: Deletes the Parse profile.
    func deleteParseProfile(userProfile: Profile) -> Void
    
    // EFFECTS: Returns the Parse profile.
    func getParseProfile() -> Profile

    
    // MARK: Reviews stored in Parse.
    func addParseReview(userReview: Reviews) -> Void
    
    func removeParseReview(userReview: Reviews) -> Void
    
    func updateParseReview(userReview: Reviews) -> Void
    
    func getParseReview() -> Reviews


    // MARK: Settings stored in Parse.
    func addParseSettings(userProfile: Settings) -> Void
    
    func updateParseSettings(userProfile: Settings) -> Void
}