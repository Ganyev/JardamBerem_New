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
    
    @IBOutlet weak var forumCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        forumCollectionView.dataSource = self
        
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        self.navigationItem.rightBarButtonItem = add
        
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        ServerManager.shared.getForum(completion: setForum, error: showErrorAllert)
    }
    
    @objc func addTapped() {
        let storyboard = UIStoryboard.init(name: "Baha", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "addforum") as! AddForumViewController
        self.show(vc, sender: self)
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
