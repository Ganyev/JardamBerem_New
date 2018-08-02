//
//  ForumCollectionViewCell.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 02.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class ForumCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var forum: Forum?
    
    func setForum(forum: Forum) {
        descLabel.text = forum.comment
        nameLabel.text = forum.nickName
    }
}
