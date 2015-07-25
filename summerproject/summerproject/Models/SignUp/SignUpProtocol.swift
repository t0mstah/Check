//
//  SignUpProtocol.swift
//  Check
//
//  Created by Zheng Hao Tan on 7/19/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation

protocol SignUpProtocol {

    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful signup, false otherwise.
    func signup(userProfile: Profile) -> Bool
}