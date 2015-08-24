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
    var backendService: ParseHandler? {get set}
    
    // Current user.
    var thisUser: Profile? {get set}
    
    // REQUIRES: A location.
    // EFFECTS: Returns a list of user profiles within the area.
    func findAllProfilesInRegion(userLocation: Location) -> [Profile]?
}