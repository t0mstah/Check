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
    var reviews: [Review]? { get set }
    var settings: Settings? { get set }
    
    // Internal states
    var isUsingParse: Bool { get set }

    
    // MARK: User profile interface.
    
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful signup, false otherwise.
    func signup() -> Bool
    
    // REQUIRES: A Profile
    // EFFECTS: Returns true if user has a logged in session, false otherwise.
    func isLoggedIn() -> Bool
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful login, false otherwise.
    func login() -> Bool
    
    // REQUIRES: A user profile.
    // EFFECTS: Returns true on successful log out, false otherwise.
    func logout() -> Bool

    // EFFECTS: Returns the user profile
    func getProfile() -> Profile

    // EFFECTS: Removes the user profile
    func removeProfile()
    
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
    func removeReview(review: Review)
    
    
    // MARK: Settings interface.
}