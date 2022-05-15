//
//  ContentView.swift
//  Ortis
//
//  Created by William Strickland on 12/26/21.
//

import SwiftUI
//public var url = "http://0.0.0.0:8000"
//public var firstName=""
//public var lastName=""
//public var email=""
//public var profilePicture=""
//public var isPrivate=0
//public var DOB=""
//public var phoneNumber=0
//public var bio=""
//public var userId=0
//
//
//struct UserInfo: Codable, Identifiable{
//    let id: Int
//    let username: String!
//    let email: String!
//    let firstName: String
//    let lastName: String
//    let profilePicture: String!
//    let password: String!
//    let isPrivate: Int!
//    let DOB: String!
//    let phoneNumber: Int!
//    let bio:String!
//}


struct ContentView: View {
    @State var users = [User]()
    
    //let vc=ViewController()
    var body: some View {
        
        NavigationView{
            //ProfileView()
            RegisterPage()
            
            //LoginView()
            //HomePageView()
            //MainMenuView()
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
