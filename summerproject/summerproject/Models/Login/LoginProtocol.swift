//
//  LoginProtocol.swift
//  Check
//
//  Created by Zheng Hao Tan on 7/19/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation

protocol LoginProtocol {
    
    
    // REQUIRES: A Profile
    // EFFECTS: Returns true if user has a logged in session, false otherwise.
    func isLoggedIn(userProfile: Profile) -> Bool
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful login, false otherwise.
    func login(userProfile: Profile) -> Bool
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful log out, false otherwise.
    func logout(userProfile: Profile) -> Bool
}
