//
//  MenuEnum.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 01.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import Foundation
import UIKit

enum MenuEnum: String {
    case main = "Главный экран"
    case terms = "Политика конфиденциальности"
    
    func getController() -> UIViewController {
        switch self {
        case .main:
            let storyboard = UIStoryboard.init(name: "Baha", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "mainvc")
            return vc
            
        case .terms:
            let storyboard = UIStoryboard.init(name: "Ramilias", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "termsvc")
            return vc
            
        }
    }
}
