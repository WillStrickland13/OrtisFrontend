//
//  UserServices.swift
//  Ortis
//
//  Created by William Strickland on 5/13/22.
//

import Foundation
import Alamofire
import SwiftyJSON



class UserServices{
    @Published var userInfo=[UserInfo]()
    
    //get user's username
    func loadUserData(completion: @escaping ([UserInfo]) -> ()){
        guard let url = URL(string: "\(url)/users/username?username=\(currentUser)") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let userInfo = try! JSONDecoder().decode([UserInfo].self, from: data!)
            DispatchQueue.main.sync {
                completion(userInfo)
            }
        }.resume()
        
    }
    
    
    
    func getFollowers(completion: @escaping(Int)->()){
        AF.request("\(url)/users/username/followers?userID=\(userId)",method:.get,encoding:JSONEncoding.default).validate().responseJSON(){ response in
            switch response.result {
            case .success(let data):
                let jsonData = JSON(data)

                //print(jsonData[0])
                let followers=jsonData[0]["followers"].intValue
                print(followers)
                completion(followers)
                
            case .failure(let error):
                print("\(error) - hello world")
            }
        }
    }
    
    func getFollowing(completion: @escaping(Int)->()){
        AF.request("\(url)/users/username/following?userID=\(userId)",method:.get,encoding:JSONEncoding.default).validate().responseJSON(){ response in
            switch response.result {
            case .success(let data):
                let jsonData = JSON(data)

                //print(jsonData[0])
                let following=jsonData[0]["following"].intValue
                print(following)
                completion(following)
                
            case .failure(let error):
                print("\(error) - hello world")
            }
        }
    }
}





