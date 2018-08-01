//
//  MainViewController.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 01.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDataSource {
    
    //MARK: Outlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    
    var categoriesArray: [Category] = []
    var announcementArray: [Announcement] = []
    
    //MARK: Properties

    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesCollectionView.dataSource = self
        
        ServerManager.shared.getCategories(id: 1, completion: setCategories, error: printError)
        ServerManager.shared.getAnnouncements(id: 1, categoryid: 1, completion: setAnnouncements, error: printError)
    }
    
    func printError(error: String) {
        print(error)
    }
    
    func setCategories(categories: [Category]) {
        categoriesArray = categories
        self.categoriesCollectionView.reloadData()
    }
    
    func setAnnouncements(announcements: [Announcement]) {
        announcementArray = announcements
        self.collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.categoriesCollectionView {
            return categoriesArray.count
        }
        return announcementArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.categoriesCollectionView {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categorycell", for: indexPath) as! CategoriesCell
        cell.nameLabel.text = categoriesArray[indexPath.row].category_name
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photocell", for: indexPath) as!
            MainCollectionViewCell
            cell.nameLabel.text = announcementArray[indexPath.row].title
            
            return cell
            
        }
        
        
    }
}

