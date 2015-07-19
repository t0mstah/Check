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
    func addParseProfile(userReview: Profile) -> Void
    
    func editParseProfile(userProfile: Profile) -> Void
    
    func deleteParseProfile(userProfile: Profile) -> Void
    
    func getParseProfile() -> Profile
    
    // MARK: Reviews stored in Parse.
    func addParseReview(userReview: Reviews) -> Void
    
    func removeParseReview(userReview: Reviews) -> Void
    
    func editParseReview(userReview: Reviews) -> Void
    
    func getParseReview() -> Reviews

    // MARK: Settings stored in Parse.
    func addParseSettings(userProfile: Settings) -> Void
    
    func editParseSettings(userProfile: Settings) -> Void
}