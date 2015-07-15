//
//  SettingsTableViewController.swift
//  summerproject
//
//  Created by Tommy Fang on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    @IBAction func toggleMenu(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName("toggleMenu", object: nil)
    }
    
}