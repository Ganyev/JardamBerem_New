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
            self.showSuccessAllert()
        }, error: { (error) in
            print(error)
        })
    }
    
    func showSuccessAllert() {
        let alert = UIAlertController(title: "Аллилуйя", message: "Успешно добавлено", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
               self.navigationController?.popViewController(animated: true)
            }))
        self.present(alert, animated: true, completion: nil)
    }
}
    

  

