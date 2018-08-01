//
//  TermsViewController.swift
//  JardamBeremNew
//
//  Created by Ramilia Imankulova on 8/1/18.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func checkBoxTapped(_ sender:UIButton){
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
    }

}
