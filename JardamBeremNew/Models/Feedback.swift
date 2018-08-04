//
//  Feedback.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 04.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import Foundation

struct Feedback {
    var nickName: String
    var comment: String
    
    
    func feedbackToDictionary() -> [String: Any] {
        return["nickName": nickName, "comment": comment, "phoneNumber": "+996772194848"]
    }
}
