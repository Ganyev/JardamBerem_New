//
//  MainCollectionViewCell.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 01.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit
import Kingfisher

var main: Announcement?

class MainCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func setAnnouns(main: Announcement) {
        imgView.image = #imageLiteral(resourceName: "no_image")
        nameLabel.text = main.title
        guard let imagePath = main.imgPath else {
            return
        }
        guard let url = URL(string: imagePath) else {
            return
        }
        imgView.kf.setImage(with: url)
        
    }
    
    
}


