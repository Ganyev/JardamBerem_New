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
    
    func setCategory(cat: Category) {
        nameLabel.text = cat.category_name
    }
}
