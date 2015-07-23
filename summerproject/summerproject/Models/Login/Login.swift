//
//  Login.swift
//  Check
//
//  Created by Zheng Hao Tan on 7/19/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation


class Login: LoginProtocol {
    
    func isLoggedIn(userProfile: Profile) -> Bool {
        
        return ParseHandler().isParseLoggedIn()
    }
    
    func login(userProfile: Profile) -> Bool {
        
        return ParseHandler().loginParseProfile(userProfile)
    }
    
    func logout(userProfile: Profile) -> Bool {
        return ParseHandler().logoutParseProfile(userProfile)
    }
}