//
//  SignUp.swift
//  Check
//
//  Created by Zheng Hao Tan on 7/19/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation

class SignUp: SignUpProtocol {

    func signup(userProfile: Profile) -> Bool {
        return ParseHandler().signUpParseProfile(userProfile)
    }
    
}