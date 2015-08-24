//
//  FacebookProfileProtocol.swift
//  Check
//
//  Created by Zheng Hao Tan on 7/29/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation

// This protocol will implement the Facebook Graph API queries.

protocol FacebookProfileProtocol {
    
    
    // MARK: Permissions
    
    
    // EFFECTS: Returns true if successfully logged in with read permissions, false otherwise.
    func loginWithReadPermissions() -> Bool
    
    // EFFECTS: Returns true if successfully received publish permissions, false otherwise.
    func requestPublishPermissions() -> Bool
   
    
    // MARK: Profile protocols
    
    
    // EFFECTS: Returns a list of Facebook profiles within the area.
    func findAllFacebookProfilesInRegion() -> [Profile]?
    
    
    // MARK: Profile Picture

    
    // REQUIRES: A Facebook profile.
    // EFFECTS: Fetches the profile picture of the given user. Returns nil if not found.
    func fetchProfilePicture(facebookProfile: FacebookProfile) -> UIImage?
}