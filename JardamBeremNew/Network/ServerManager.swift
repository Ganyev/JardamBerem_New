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
    
    
    func getCategories(completion: @escaping ([Category]) -> (), error: @escaping (String) -> ()) {
        self.get(endpoint: Constants.Network.EndPoint.categories, completion: { (data) in
  
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
    
    func getAnnouncements(categoryid: Int, completion: @escaping ([Announcement]) -> (), error: @escaping (String) -> ()) {
        self.get(endpoint: Constants.Network.EndPoint.announcement(by: categoryid), completion: { (data) in
            
            do {
                guard let  data = data else { return }
                let result = try JSONDecoder().decode(AnnouncementResults.self, from: data)
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
    
    func getForum(completion: @escaping ([Forum]) -> (), error: @escaping (String) -> ()) {
        self.get(endpoint: Constants.Network.EndPoint.forum, completion: { (data) in
            //TODO
            do {
                guard let  data = data else { return }
                let result = try JSONDecoder().decode(ForumResult.self, from: data)
                completion(result.results)
            }
            catch let errorMessage {
                error(errorMessage.localizedDescription)
            }
            
        }) { (errorMessage) in
            error(errorMessage)
        }
    }
    func getCharityEvents(completion: @escaping ([CharityEvent]) -> (), error: @escaping (String) -> ()) {
        self.get(endpoint: Constants.Network.EndPoint.charityEvent, completion: { (data) in
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
    
    
    
}











