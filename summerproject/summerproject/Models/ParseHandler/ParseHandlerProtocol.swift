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
    func addParseProfile(userProfile: Profile, parseProfileObjectName: String)

    // REQUIRES: A user profile.
    // EFFECTS: Updates the Parse profile stored in the cloud.
    func updateParseProfile(parseProfileObjectName: String, parseProfileObjectId: String?)
    
    // REQUIRES: A user profile.
    // EFFECTS: Deletes the Parse profile.
    func deleteParseProfile(parseProfileObjectName: String, parseProfileObjectId: String?)
    
    // EFFECTS: Returns the Parse profile.
    func getParseProfile(parseProfileObjectName : String, parseProfileObjectId: String?) -> Profile
    
    // MARK: Reviews stored in Parse.
    func addParseReview(userReview: Reviews)
    
    func removeParseReview(userReview: Reviews)
    
    func updateParseReview(userReview: Reviews)
    
    func getParseReview() -> Reviews


    // MARK: Settings stored in Parse.
    func addParseSettings(userProfile: Settings)
    
    func updateParseSettings(userProfile: Settings)
}