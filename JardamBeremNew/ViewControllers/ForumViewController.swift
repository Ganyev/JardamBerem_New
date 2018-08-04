//
//  ForumViewController.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 02.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class ForumViewController: UIViewController, UICollectionViewDataSource {
    
    var forumArray: [Forum] = []
    let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
    
    @IBOutlet weak var forumCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = add
        
        ServerManager.shared.getForum(completion: setForum) { (error) in
            error
        }
    }
    
    @objc func addTapped() {
        
    }
    
    func setForum(forum: [Forum]) {
        forumArray = forum
        self.forumCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return forumArray.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "forum_cell", for: indexPath) as! ForumCollectionViewCell
        cell.setForum(forum: forumArray[indexPath.item])
        return cell
    }
    
    
    
    

}
