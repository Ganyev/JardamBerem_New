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
            static let reviews = "review"
            static let charityEvent = "api/charity_event/"
            
            static func charityEventById(by id: Int) -> String {
            ///api/charity_event/<id_of_charityEvent>
                return "api/charity_event/\(id)"
            }

            static let categories = "api/categories/"
            static let forum = "forum"
            //api/categories/1/announcements/
            static func announcement(by categoryid: Int) -> String {
                return "api/categories/\(categoryid)/announcements"
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
