//
//  CharityTableViewCell.swift
//  JardamBeremNew
//
//  Created by Ramilia Imankulova on 8/2/18.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class CharityTableViewCell: UITableViewCell {
    @IBOutlet weak var charityImageView: UIImageView!
    @IBOutlet weak var titleCharity: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setData(charity:CharityEvent){
        titleCharity.text = charity.title
        let url = URL(string: charity.imgPath!)
        charityImageView.kf.setImage(with: url)
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
