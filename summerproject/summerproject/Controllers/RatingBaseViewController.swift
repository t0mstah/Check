//
//  RatingBaseViewController.swift
//  Check
//
//  Created by Tommy Fang on 7/28/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit

class RatingBaseViewController: UIViewController, UIPageViewControllerDataSource {
    private var buttonSize = UIScreen.mainScreen().bounds.width/7.5
    
    private var pageViewController: UIPageViewController?
    
    private var pageItemController: RatingViewController?
    
    private var last: Bool = false
    
    override func viewWillAppear(animated: Bool) {
        createPageItemController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPageViewController()
        setupPageControl()
    }
    
    private func createPageViewController() {
        let pageController = self.storyboard!.instantiateViewControllerWithIdentifier("PageController2") as! UIPageViewController
        pageController.dataSource = self
        
        let firstController = self.storyboard!.instantiateViewControllerWithIdentifier("Rating") as! RatingViewController
        let startingViewControllers: NSArray = [firstController]
        pageController.setViewControllers(startingViewControllers as [AnyObject], direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        
        pageViewController = pageController
        addChildViewController(pageViewController!)
        self.view.addSubview(pageViewController!.view)
        pageViewController!.didMoveToParentViewController(self)
    }
    
    private func createPageItemController() {
        pageItemController = self.storyboard!.instantiateViewControllerWithIdentifier("Rating1") as? RatingViewController
        pageItemController!.loadView()
        pageItemController!.viewDidLoad()
    }
    
    private func setupPageControl() {
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.whiteColor()
        appearance.currentPageIndicatorTintColor = UIColor(red: 44.0/255.0, green: 62.0/255.0, blue: 80.0/255.0, alpha: 1.0)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        if (!last) {
            last = true
            return pageItemController
        }
        
        return nil
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 2
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }

}
