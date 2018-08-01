//
//  ViewController.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 01.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var mainMenuArray = ["Главный экран"]
    
    @IBOutlet weak var mainTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.dataSource = self
//        ServerManager.shared.getCities(completion: printCities) { (error) in
//            print(error)
//        }
//        ServerManager.shared.getCategories(id: 1, completion: printCategories) { (error) in
//            print(error)
//        }
//        ServerManager.shared.getReviews(completion: printReviews) { (error) in
//            print(error)
//        }
//        ServerManager.shared.getForum(completion: printForum) { (error) in
//            print(error)
//        }
        
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainMenuArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mainMenuArray[indexPath.row]
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let storyboard = UIStoryboard.init(name: "Baha", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "mainvc") as! MainViewController
//        mainMenuArray[0] =
//        self.show(vc, sender: self)
//    }


}

