//
//  Announcement.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 02.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import Foundation

class AnnouncementResults: Decodable {
    var results: [Announcement] = []
}

class Announcement: Decodable {
    var id: Int?
    var city: Int?
    var title: String?
    var imgPath: String?
}
