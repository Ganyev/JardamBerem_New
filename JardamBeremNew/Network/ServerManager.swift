//
//  ServerManager.swift
//  JardamBeremNew
//
//  Created by Baha Ganyev on 01.08.2018.
//  Copyright © 2018 Baha Ganyev. All rights reserved.
//

import Foundation
import Alamofire

class ServerManager: HTTPRequestManager {
    static let shared = ServerManager()
    
    func getCities(completion: @escaping ([City]) -> (), error: @escaping (String) -> ()) {
        self.get(endpoint: Constants.Network.EndPoint.cities, completion: { (data) in
            //TODO
            do {
                guard let  data = data else { return }
                let result = try JSONDecoder().decode(CityResult.self, from: data)
                completion(result.results)
            }
            catch let errorMessage {
                error(errorMessage.localizedDescription)
            }
            
        }) { (errorMessage) in
            error(errorMessage)
        }
    }
    
    
    func getCategories(id: Int, completion: @escaping ([Category]) -> (), error: @escaping (String) -> ()) {
        self.get(endpoint: Constants.Network.EndPoint.category(by: id), completion: { (data) in
  
            do {
                guard let  data = data else { return }
                let result = try JSONDecoder().decode(CategoryResult.self, from: data)
                completion(result.results)
            }
            catch let errorMessage {
                error(errorMessage.localizedDescription)
            }
            
        }) { (errorMessage) in
            error(errorMessage)
        }
    }
    
    func getReviews(completion: @escaping ([Review]) -> (), error: @escaping (String) -> ()) {
        self.get(endpoint: Constants.Network.EndPoint.reviews, completion: { (data) in
            //TODO
            do {
                guard let  data = data else { return }
                let result = try JSONDecoder().decode(ReviewResult.self, from: data)
                completion(result.results)
            }
            catch let errorMessage {
                error(errorMessage.localizedDescription)
            }
            
        }) { (errorMessage) in
            error(errorMessage)
        }
    }
    
    
}


//http://138.68.166.31:9000/
//
//
//api
//
//api/cities/
//
//api/cities/<id_of_city>
//
//api/cities/<id_of_city>/categories/
//
//api/cities/<id_of_city>/categories/<id_of_category>
//
//api/cities/<id_of_city>/categories/<id_of_category>/annoucements/<id_of_announcemet>
//
//api/cities/<id_of_city>/categories/<id_of_category>/announcements/?title=<name_of_title>
//
//review










