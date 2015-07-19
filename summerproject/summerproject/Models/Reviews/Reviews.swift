//
//  Reviews.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/13/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

// import Foundation

class Reviews : ReviewsProtocol {
    
    var review = ["hello1", "hello2"]
    
//    init(date: NSDate, reviews: [String],)

    func getReviews() -> [String] {
        return review
    }
    
    func addReview(review: String) {
        
    }
    
    func editReview(reviewId: Int32) {
        
    }
}
