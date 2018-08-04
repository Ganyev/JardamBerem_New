//
//  Extensions.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 04.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func showSuccessAllert(aTitle: String, aMessage: String) {
        let alert = UIAlertController(title: aTitle, message: aMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            self.navigationController?.popViewController(animated: true)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    func showErrorAllert(aMessage: String) {
        let alert = UIAlertController(title: "Ошибка", message: aMessage, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
        }))
        self.present(alert, animated: true, completion: nil)
    }
}
