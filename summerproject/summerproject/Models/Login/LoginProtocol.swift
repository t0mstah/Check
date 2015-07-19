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
    func userIsLoggedIn(userProfile: Profile) -> Bool
}
