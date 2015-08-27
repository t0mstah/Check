//
//  UserProfile.swift
//  summerproject
//
//  Created by Zheng Hao Tan on 7/12/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

// This Profile protocol will handle anything that has to do with user's online
// profiles. Examples: Facebook, Twitter, Login with Email etc.

import Foundation
import UIKit

protocol ProfileProtocol {
    
    var username: String { get set }
    var password: String { get set }
    var email: String { get set }
    
    var id: String? { get set }
    var profilePicture : UIImage? { get set }
    var name: String { get set }
    var biography : String { get set }
    var phoneNumber: String { get set }
    var checkPoints: Int { get set }
    var isCheckVerified: Bool { get set }
    var reviewIds: [String]? { get set }
    var settings: Settings? { get set }

    // MARK: Reviews interface.
    
    // EFFECTS: Returns all reviews for this user.
    func getReviews() -> [Review]?
    
    // REQUIRES: A review.
    // EFFECTS: Creates a review id and adds a review from this user to the
    //          person's profile.
    func addReview(review: Review)
    
    // REQUIRES: A review.
    // EFFECTS: Edits the person's review and changes the modification date.
    func updateReview(review: Review)
    
    // REQUIRES: A review.
    // EFFECTS: Remove the given review.
    func removeReview(reviewId: String)
    
    // MARK: Settings interface.
    
    func updateSettings(settings: Settings)
}