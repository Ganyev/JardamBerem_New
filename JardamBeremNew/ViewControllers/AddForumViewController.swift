//
//  AddForumViewController.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 04.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class AddForumViewController: UIViewController {

    @IBOutlet weak var textAddForum: UITextField!
    @IBOutlet weak var nickName: UITextField!
    @IBOutlet weak var addForumButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addForumTapped() {
        let feedbackModel = Feedback(nickName: nickName.text!, comment: textAddForum.text!)
        ServerManager.shared.giveFeedback(feedback: feedbackModel, completion: {
            self.showSuccessAllert(aTitle: "Аллилуйя!", aMessage: "Ваш текст успешно добавлен")
        }, error: showErrorAllert)
    }
    

}
    

  

