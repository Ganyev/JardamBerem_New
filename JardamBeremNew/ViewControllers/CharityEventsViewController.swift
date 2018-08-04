//
//  CharityEventsViewController.swift
//  JardamBeremNew
//
//  Created by Ramilia Imankulova on 8/2/18.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import UIKit

class CharityEventsViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var charityTableView: UITableView!
    var charityEvents : [CharityEvent] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        charityTableView.delegate = self
        charityTableView.dataSource = self 
        ServerManager.shared.getCharityEvents(completion: setCharity, error: forError)
        // Do any additional setup after loading the view.
    }
    
    func setCharity (allCharities:[CharityEvent]){
        charityEvents = allCharities
        self.charityTableView.reloadData()
    }
    
    func forError(error: String) {
        print(error)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charityEvents.count
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = charityTableView.dequeueReusableCell(withIdentifier: "cellCharity") as! CharityTableViewCell
        cell.setData(charity: charityEvents[indexPath.row])
        return cell
    }

}
