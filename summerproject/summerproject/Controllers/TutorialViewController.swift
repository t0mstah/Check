//
//  TutorialViewController.swift
//  Check
//
//  Created by Tommy Fang on 7/19/15. Tutorial from Olga Dalton on swiftiostutorials.com on 26/10/14.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIPageViewControllerDataSource {
    private var buttonSize = UIScreen.mainScreen().bounds.width/7.5
    
    private var pageViewController: UIPageViewController?
    
    private let contentImages = ["Tutorial.png",
        "Tutorial_2.png",
        "Tutorial_3.png",
        "Tutorial_4.png"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPageViewController()
        setupPageControl()
    }
    
    private func createPageViewController() {
        let pageController = self.storyboard!.instantiateViewControllerWithIdentifier("PageController") as! UIPageViewController
        pageController.dataSource = self
        
        if contentImages.count > 0 {
            let firstController = getItemController(0)!
            let startingViewControllers: NSArray = [firstController]
            pageController.setViewControllers(startingViewControllers as [AnyObject], direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        }
        
        pageViewController = pageController
        addChildViewController(pageViewController!)
        self.view.addSubview(pageViewController!.view)
        pageViewController!.didMoveToParentViewController(self)
    }
    
    private func setupPageControl() {
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.whiteColor()
        appearance.currentPageIndicatorTintColor = UIColor(red: 44.0/255.0, green: 62.0/255.0, blue: 80.0/255.0, alpha: 1.0)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! PageViewController
        
        if itemController.itemIndex > 0 {
            return getItemController(itemController.itemIndex - 1)
        }
        
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as! PageViewController
        
        if itemController.itemIndex + 1 < contentImages.count {
            return getItemController(itemController.itemIndex + 1)
        }
        
        return nil
    }
    
    private func getItemController(itemIndex: Int) -> PageViewController? {
        if itemIndex < contentImages.count {
            let pageItemController = self.storyboard!.instantiateViewControllerWithIdentifier("ItemController") as! PageViewController
            pageItemController.itemIndex = itemIndex
            pageItemController.imageName = contentImages[itemIndex]
            
            if pageItemController.imageName == "Tutorial_4.png" {
                let image = UIImage(named: "Tutorial_Check.png") as UIImage!
                let button = UIButton.buttonWithType(UIButtonType.System) as! UIButton
                button.setImage(image, forState: .Normal)
                button.frame = CGRectMake(UIScreen.mainScreen().bounds.width/2.0 - buttonSize/2.0, UIScreen.mainScreen().bounds.height/2.0 - buttonSize/2.0, buttonSize, buttonSize)
                button.tintColor = UIColor(red: 44.0/255.0, green: 62.0/255.0, blue: 80.0/255.0, alpha: 1.0)
                button.addTarget(self, action: "buttonClicked:", forControlEvents: .TouchUpInside)
                
                pageItemController.view.addSubview(button)
            }
            
            return pageItemController
        }
        
        return nil
    }
    
    func buttonClicked(sender: UIButton!) {
        performSegueWithIdentifier("FinishTutorial", sender: self)
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return contentImages.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
}

