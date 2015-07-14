//
//  HomeTableViewController.swift
//  summerproject
//
//  Created by Tommy Fang on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
    @IBAction func toggleMenu(sender: AnyObject) {            NSNotificationCenter.defaultCenter().postNotificationName("toggleMenu", object: nil)
    }
    
    override func viewDidLoad() {
        
    }
    
    override func viewDidAppear(animated: Bool) {

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

    }
}
