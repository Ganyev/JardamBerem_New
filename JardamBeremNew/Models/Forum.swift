//
//  Forum.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 01.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import Foundation

class ForumResult: Decodable {
    var results: [Forum] = []
}

class Forum: Decodable {
    var id: Int?
    var nickName: String?
    var phoneNumber: String?
    var comment: String?
    var date: String?
}
