//
//  Reviews.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 01.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import Foundation

class ReviewResult: Decodable {
    var results: [Review] = []
}

class Review: Decodable {
    var id: Int?
    var email: String?
    var reviewText: String?
}
