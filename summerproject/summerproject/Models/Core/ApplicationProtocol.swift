//
//  ApplicationProtocol.swift
//  Check
//
//  Created by Zheng Hao Tan on 7/31/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation

// This file will implement core application protocols.

protocol ApplicationProtocol {
    
    // Internal states
    var isUsingParse: Bool { get set }
    var backendService: ParseHandler? { get set }
    
    // Current user.
    var thisUser: Profile? { get set }
    
    // MARK: User profile interface.
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful signup, false otherwise.
    func signup() -> Bool
    
    // REQUIRES: A Profile
    // EFFECTS: Returns true if user has a logged in session, false otherwise.
    func isLoggedIn() -> Bool
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful login, false otherwise.
    func login() -> Bool
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful log out, false otherwise.
    func logout() -> Bool
    
    // EFFECTS: Returns the user profile
    func getProfile() -> Profile
    
    // EFFECTS: Removes the user profile
    func removeProfile()
    
    
    // REQUIRES: A location.
    // EFFECTS: Returns a list of user profiles within the area.
    func findAllProfilesInRegion(userLocation: Location) -> [Profile]?
}