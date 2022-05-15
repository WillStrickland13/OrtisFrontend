//
//  UserServices.swift
//  Ortis
//
//  Created by William Strickland on 5/13/22.
//

import Foundation
import Alamofire
import SwiftyJSON
import UIKit

public var url = "http://0.0.0.0:8000"
public var firstName=""
public var lastName=""
public var email=""
public var profilePicture=""
public var isPrivate=0
public var DOB=""
public var phoneNumber=0
public var bio=""
public var userId=0


struct UserInfo: Codable, Identifiable{
    let id: Int
    let username: String!
    let email: String!
    let firstName: String
    let lastName: String
    let profilePicture: String!
    let password: String!
    let isPrivate: Int!
    let DOB: String!
    let phoneNumber: Int!
    let bio:String!
}


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
    var str = ""
    public func displayName()->String{
        
        getData(from: url){result in
            self.str=result
            
        }
        print(str)
        return str
    }
    private func getData(from url: String, completion: @escaping(String)->Void){
        
        let task = URLSession.shared.dataTask(with: URL(string:url+"/users")!, completionHandler: {data, response, error in

            guard let data =  data else{ return }

            do{
                let result = try JSONDecoder().decode([UserInfo].self, from: data)

                completion(result.first!.firstName)
            }
            catch let jsonErr {
                print("Error serializing json:", jsonErr)
                completion("Error")
            }
        })
        task.resume()
        


    }
    
    private func getName(url: String, completion: @escaping (String) -> ()) {
        let url = URL(string: url)!

        URLSession.shared.dataTask(with:url) { (data, response, error) in
          if error != nil {
            print(error!)
            completion("")
          } else {
            if let returnData = String(data: data!, encoding: .utf8) {
              completion(returnData)
            } else {
              completion("")
            }
          }
        }.resume()
    }
}





