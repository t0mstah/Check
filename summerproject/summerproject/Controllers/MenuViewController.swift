//
//  MenuViewController.swift
//  summerproject
//
//  Created by Tommy Fang on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!

    let leftMenuWidth:CGFloat = 260
    
    override func viewDidLoad() {
        
        // Initially close menu programmatically.  This needs to be done on the main thread initially in order to work.
        dispatch_async(dispatch_get_main_queue()) {
            self.closeMenu()
        }
        
        // Tab bar controller's child pages have a top-left button toggles the menu
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "toggleMenu", name: "toggleMenu", object: nil)
        
    }
    
    // Cleanup notifications added in viewDidLoad
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    func toggleMenu(){
        scrollView.contentOffset.x == 0  ? closeMenu() : openMenu()
    }
    
    // Use scrollview content offset-x to slide the menu.
    func closeMenu(){
        scrollView.setContentOffset(CGPoint(x: leftMenuWidth, y: 0), animated: true)
    }
    
    // Open is the natural state of the menu because of how the storyboard is setup.
    func openMenu(){
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }

}
