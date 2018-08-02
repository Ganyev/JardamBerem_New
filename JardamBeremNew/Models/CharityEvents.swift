//
//  CharityEvents.swift
//  JardamBeremNew
//
//  Created by Ramilia Imankulova on 8/2/18.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import Foundation
class Charity : Decodable {
    var results: [CharityEvent] = []
}

class CharityEvent : Decodable {
    var id : Int ?
    var title : String?
    var description : String?
    var imgPath : String?
}
