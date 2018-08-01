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
            
        }
        
        struct ErrorMessage {
            static let NO_INTERNET_CONNECTION = "No internet connection"
            static let UNABLE_LOAD_DATA = "Unable load data"
            static let NO_HTTP_STATUS_CODE = "Unable to get response HTTP status code"
            static let UNAUTHORIZED = "Unauthorized error"
        }
    }
}
