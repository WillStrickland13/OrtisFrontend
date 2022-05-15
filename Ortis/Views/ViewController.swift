//
//  ViewController.swift
//  Ortis
//
//  Created by William Strickland on 12/26/21.
//
import Foundation
import UIKit
import Alamofire
import SwiftUI
import PixelSDK
class ViewController:UIViewController{
    

    let us=UserServices()
    override func viewDidLoad() {

        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true,animated: false)
        print("printing username!")

        
//        getData(from: url){ result in
//            VStack{Text(result)}
//        }

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
