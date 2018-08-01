//
//  LangViewController.swift
//  JardamBeremNew
//
//  Created by Ramilia Imankulova on 8/1/18.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class LangViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var langLabel: UILabel!
    
    
    var langs: [String] = ["Кыргызча", "Русский"]

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        return langs [row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return langs.count
    }
    
    @IBAction func readyButton (){
        
    }
    
    
   
 
}
