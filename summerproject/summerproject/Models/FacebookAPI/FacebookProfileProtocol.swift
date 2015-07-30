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
   
    // EFFECTS: Returns true if successfully logged in with read permissions, false otherwise.
    func loginWithReadPermissions() -> Bool
    
    // EFFECTS: Returns true if successfully received publish permissions, false otherwise.
    func requestPublishPermissions() -> Bool
    
}