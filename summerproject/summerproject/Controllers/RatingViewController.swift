//
//  RatingViewController.swift
//  Check
//
//  Created by Tommy Fang on 7/28/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit

class RatingViewController: UIViewController {
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var name: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
                
        picture.clipsToBounds = true
        picture.layer.cornerRadius = picture.frame.size.width / 2.0
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
