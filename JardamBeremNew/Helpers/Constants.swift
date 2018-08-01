//
//  Constants.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 01.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import Foundation
struct Constants {
    struct Network{
        struct EndPoint {
            static let cities = "api/cities/"
            //static let categories = "api/cities/"
            //api/cities/<id_of_city>/categories/
            static let reviews = "review"
            static func category(by id: Int) -> String {
                return "api/cities/\(id)/categories/"
            }
            static let forum = "forum"
            //api/cities/<id_of_city>/categories/<id_of_category>/announcements
            static func announcement(by id: Int, by categoryid: Int) -> String {
                return "api/cities/\(id)/categories/\(categoryid)/announcements"
            }
        }
        
        struct ErrorMessage {
            static let NO_INTERNET_CONNECTION = "No internet connection"
            static let UNABLE_LOAD_DATA = "Unable load data"
            static let NO_HTTP_STATUS_CODE = "Unable to get response HTTP status code"
            static let UNAUTHORIZED = "Unauthorized error"
        }
    }
}
