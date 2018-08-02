//
//  CategoriesCell.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 02.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit
import Kingfisher

var cat: Category?

class CategoriesCell: UICollectionViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    
    func setCategory(cat: Category) {
        nameLabel.text = cat.category_name
        
        guard let imagePath = cat.category_imgPath else {
            return
        }
        guard let url = URL(string: imagePath) else {
            return
        }
        imageLabel.kf.setImage(with: url)
    }
}
