//
//  LoginView.swift
//  Ortis
//
//  Created by William Strickland on 12/31/21.
//

import SwiftUI
import Alamofire
import SwiftyJSON
var login:Bool=false
struct LoginView: View {
    @State private var isLoginCorrect = false
    @State var username: String=""
    @State var password: String=""
    var body: some View {
        
        
        VStack{
            Image("Logo").resizable()
                .frame(width: 100, height: 100, alignment: .center)
            TextField("Username", text: $username)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
                .padding(.vertical, 10.0)
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            NavigationLink(destination: HomePageView(),isActive: $isLoginCorrect){
                ZStack{
                    Capsule()
                        .fill(Color("SecondaryColor"))
                        .frame(width: 160, height: 60, alignment: .center)
                    
                    
                    Text("Log In")
                        .fontWeight(.semibold)
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 1.0, green: 0.0,        blue: 0.0, opacity: 1.0))
                        .padding()
                    
                    
                    
                }.padding()
                    .onTapGesture {
                        login(user:username,pswd:password)
                        isLoginCorrect=login
                        
                    }
            }
        }.padding()
    }
}


func login(user:String, pswd:String){
    let params:Parameters=[
        "username":user,
        "passwd":pswd
    ]
    
    AF.request("http://0.0.0.0:8000/users/login", method: .post, parameters: params, encoding: JSONEncoding.default, headers: nil).validate(statusCode: 200 ..< 299).responseJSON { AFdata in
        do {
            guard let jsonObject = try JSONSerialization.jsonObject(with: AFdata.data!) as? [String: Any] else {
                print("Error: Cannot convert data to JSON object")
                return
            }
            guard let prettyJsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) else {
                print("Error: Cannot convert JSON object to Pretty JSON data")
                return
            }
            guard let prettyPrintedJson = String(data: prettyJsonData, encoding: .utf8) else {
                print("Error: Could print JSON in String")
                return
            }
            
            //print(prettyPrintedJson["message"])
            let json=JSON(AFdata.data)
            if let authentication = json["message"].string{
                if authentication=="Authentication Successful"{
                    print("Success")
                    login=true
                }
                else{
                    print("Fail")
                    login=false
                }
            }
        } catch {
            print("Error: Trying to convert JSON data to string")
            return
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
