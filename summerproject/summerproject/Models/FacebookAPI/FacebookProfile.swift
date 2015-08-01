//
//  FacebookProfile.swift
//  Check
//
//  Created by Zheng Hao Tan on 7/29/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

// This class implements the FacebookProfileProtocol

import Foundation
import Parse

class FacebookProfile : FacebookProfileProtocol {
    
    
    // MARK: Permissions.

    
    func loginWithReadPermissions() -> Bool {
        var isSuccessfulLogin = false
        
        //        var permissions = ["]
        PFFacebookUtils.logInInBackgroundWithReadPermissions([]) {
            (user: PFUser?, error: NSError?) -> Void in
            
            if let user = user {
                
                if user.isNew {
                    println("User signed up and logged in through Facebook!")
                }
                else {
                    println("User logged in through Facebook!")
                }
                
                isSuccessfulLogin = true
                
            }
            else {
                println("Uh oh. The user cancelled the Facebook login.")
                isSuccessfulLogin = false
            }
        }
        
        return isSuccessfulLogin
    }
    
    func requestPublishPermissions() -> Bool {
        
        var isSuccessful = false

        // Request new Publish Permissions
        var user = PFUser.currentUser()
//        
//        PFFacebookUtils.linkUserInBackground(user!, withPublishPermissions: ["publish_actions"], {
//            (succeeded: Bool?, error: NSError?) -> Void in
//            if succeeded != nil {
//                println("User now has read and publish permissions!")
//                isSuccessful = true
//            }
//            else {
//                println("Oops! User cannot publish new permissions!")
//            }
//        })
        
        return isSuccessful
    }

    
    // MARK: Profile protocols
    // TODO: Implement this.
//    
//   To access the user's Facebook access token, you can simply call [FBSDKAccessToken currentAccessToken] to access the FBSDKAccessToken instance, which can be passed to FBSDKGraphRequests.
    func findAllFacebookProfilesInRegion() -> [Profile]? {
        return nil
    }
}