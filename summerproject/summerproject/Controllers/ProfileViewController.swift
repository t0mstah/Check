//
//  ProfileViewController.swift
//  summerproject
//
//  Created by Tommy Fang on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBAction func toggleMenu(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName("toggleMenu", object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
