//
//  ViewController.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 01.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ServerManager.shared.getCities(completion: printCities) { (error) in
            print(error)
        }
        ServerManager.shared.getCategories(id: 1, completion: printCategories) { (error) in
            print(error)
        }
        ServerManager.shared.getReviews(completion: printReviews) { (error) in
            print(error)
        }
    }

    func printCities(city: [City]) {
        for i in city {
            print(i.city_name ?? "")
        }
    }
    
    func printCategories(category: [Category]) {
        for i in category {
            print(i.category_name ?? "", i.city ?? "", i.id ?? "")
        }
    }
    
    func printReviews(review: [Review]) {
        for i in review {
            print(i.email ?? "", i.id ?? "", i.reviewText ?? "")
        }
    }

}

