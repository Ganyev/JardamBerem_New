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
    
    //MARK: Properties

    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesCollectionView.dataSource = self
        
        ServerManager.shared.getCategories(id: 1, completion: setCategories, error: printError)
    }
    
    func printError(error: String) {
        print(error)
    }
    
    func setCategories(categories: [Category]) {
        categoriesArray = categories
        self.categoriesCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.categoriesCollectionView {
            return categoriesArray.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.categoriesCollectionView {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categorycell", for: indexPath) as! CategoriesCell
        cell.nameLabel.text = categoriesArray[indexPath.row].category_name
            return cell
        }
        return UICollectionViewCell()
        
        
        
        
    }
}

