//
//  PageViewController.swift
//  Check
//
//  Created by Tommy Fang on 7/19/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit

class PageViewController: UIViewController {
    @IBOutlet var contentImageView: UIImageView?
    
    var itemIndex: Int = 0
    
    var imageName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentImageView!.image = UIImage(named: imageName)
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

