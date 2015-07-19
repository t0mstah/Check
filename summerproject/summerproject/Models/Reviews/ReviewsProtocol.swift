//
//  ReviewsProtocol.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

// This Review protocol will handle everything related to reviews.
import Foundation

protocol ReviewsProtocol {
    
    // EFFECTS: Returns all reviews
    
//    var date: NSDate { get set }
    var review: [String] { get set }
    
    func getReviews() -> [String]
    
    func addReview(review: String)
    
    func editReview(reviewId : Int32)
}