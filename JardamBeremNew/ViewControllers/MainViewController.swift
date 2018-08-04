//
//  MainViewController.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 01.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK: Outlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    
    var categoriesArray: [Category] = []
    var announcementArray: [Announcement] = []
    
    //MARK: Properties

    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesCollectionView.dataSource = self
        categoriesCollectionView.delegate = self
        
        ServerManager.shared.getCategories(completion: setCategories, error: showErrorAllert)
        ServerManager.shared.getAnnouncements(categoryid: 1, completion: setAnnouncements, error: showErrorAllert)
        if let layout = collectionView?.collectionViewLayout as? PinterestLayout {
            layout.delegate = self as! PinterestLayoutDelegate
        }
        collectionView.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
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
        cell.setCategory(cat: categoriesArray[indexPath.item])
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photocell", for: indexPath) as!
            MainCollectionViewCell
            cell.setAnnouns(main: announcementArray[indexPath.item])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.collectionView {
        let cellWidth = (collectionView.frame.width - 30) / 2
        guard let imageWidth = announcementArray[indexPath.row].imgPath_width, let imageHeight = announcementArray[indexPath.row].imgPath_height else {
            return CGSize(width: cellWidth, height: cellWidth)
        }
        guard imageWidth != 0 && imageHeight != 0 else {
            return CGSize(width: cellWidth, height: cellWidth)
        }
        let cellHeight = (Int(cellWidth) * imageHeight) / imageWidth
        let size = CGSize(width: Int(cellWidth), height: cellHeight)
        
        return size
        }
        return CGSize(width: 150, height: 150)
    
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.categoriesCollectionView {
            
        let selectedId = categoriesArray[indexPath.item].id
        ServerManager.shared.getAnnouncements(categoryid: selectedId!, completion: setAnnouncements, error: showErrorAllert)
        self.collectionView.reloadData()
        }
    }
    
}

