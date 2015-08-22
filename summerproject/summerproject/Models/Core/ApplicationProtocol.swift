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
    
    // REQUIRES: A location.
    // EFFECTS: Returns a list of user profiles within the area.
    func findAllProfilesInRegion(userLocation: Location) -> [Profile]?
    
    // REQUIRES: A location for
}