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
    
    
//    var date: NSDate { get set }
    var review: [String] { get set }

    // EFFECTS: Returns all reviews
    func getReviews() -> [String]
    
    // REQUIRES: A review.
    // EFFECTS: Creates a review id and adds a review that is linked to the 
    //          person's profile.
    func addReview(review: String)

    // REQUIRES: A reviewId.
    // EFFECTS: Edits the person's review and changes the modification date.
    func editReview(reviewId : Int32)
    
    // REQUIRES: A reviewId.
    // EFFECTS: Remove the given review.
    func removeReview(reviewId: Int32)
}