//
//  User.swift
//  Ortis
//
//  Created by William Strickland on 12/29/21.
//

import Foundation


struct User: Codable, Identifiable{
    let id = UUID()
    let username: String
    let email: String
    let firstName: String
    let lastName: String
    let profilePicture: String
    let password: String
    let isPrivate: Int
    let DOB: String
}

class Api : ObservableObject{
    @Published var users = [User]()
    
    func loadData(completion:@escaping ([User]) -> ()) {
        guard let url = URL(string: "http://0.0.0.0:8000/users") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let users = try! JSONDecoder().decode([User].self, from: data!)
            print(users)
            DispatchQueue.main.async {
                completion(users)
            }
        }.resume()
        
    }
}
