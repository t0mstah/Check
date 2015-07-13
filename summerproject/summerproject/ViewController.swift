//
//  ViewController.swift
//  summerproject
//
//  Created by Tommy Fang on 6/14/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let userProfile = PFObject(className: "UserProfile")
        userProfile["biography"] = "Hi, I am biography."
        userProfile["rewardPoints"] = 10

        userProfile.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            println("User Profile has been saved.")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

