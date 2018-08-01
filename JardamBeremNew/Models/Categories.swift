//
//  Categories.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 01.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import Foundation

class CategoryResult: Decodable {
    var results: [Category] = []
}

class Category: Decodable {
    var id: Int?
    var category_name: String?
    var category_imgPath: String?
    var category_imgPath_height: Int?
    var category_imgPath_width: Int?
    var city: Int?
}
