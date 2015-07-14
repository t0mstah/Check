//
//  UserProtocol.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation

protocol UserProtocol {
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true if user is created successfully, false otherwise.
    func addUser(userProfile: String) -> Bool
    
    
    func editUser(UserProfile: String) -> Bool
    
    // REQUIRES: A valid user.
    // EFFECTS: Returns true if user is successfully deleted, false otherwise.
    func removeUser(userProfile: String) -> Bool
}
