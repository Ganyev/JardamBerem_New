//
//  CitiesViewController.swift
//  JardamBeremNew
//
//  Created by Ramilia Imankulova on 8/1/18.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class CitiesViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var regionLbl: UILabel!
    @IBOutlet weak var regionPickerView: UIPickerView!
    
    var cities :[City] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        regionPickerView.dataSource = self
        regionPickerView.delegate = self
        ServerManager.shared.getCities(completion: setCities, error: forError)
    }
    
    
    func setCities(allCities: [City]){
        cities  = allCities
        self.regionPickerView.reloadAllComponents()
    
    }
    func forError(error: String) {
        print(error)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        return cities[row].city_name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    
    @IBAction func readyButton (){
        
    }
    

}
