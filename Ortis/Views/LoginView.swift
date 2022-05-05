//
//  LoginView.swift
//  Ortis
//
//  Created by William Strickland on 12/31/21.
//

import SwiftUI
import Alamofire
import SwiftyJSON
var loginVar:Bool=false
public var currentUser: String=""
struct LoginView: View {
    @State private var isLoginCorrect = false
    @State var username: String=""
    @State var password: String=""
    @State var showErrorMessage: Bool = false
    @State var showForgotPassword: Bool = false
    var body: some View {
            
        VStack{
            Image("Logo").resizable()
                .frame(width: 175, height: 175, alignment: .center)
                .padding(.bottom, 140)
                
            TextField("Username", text: $username)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding(.all, 10.0)
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding([.leading, .bottom, .trailing], 10.0)
            if(showErrorMessage){
                Text("Incorrect username or password")
            }
            if(showForgotPassword){
                Text("Forgot your password?")
            }
            
            ZStack{
                Text("Log In")
                    .fontWeight(.bold)
                    .font(.title2)
                    .padding()
                    .background(Color("SecondaryColor"))
                    .cornerRadius(15)
                    .foregroundColor(Color("PrimaryColor"))
                    .padding(10)
                   
                    .onTapGesture {
                        let params:Parameters=[
                            "username":username,
                            "passwd":password
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
                                guard String(data: prettyJsonData, encoding: .utf8) != nil else {
                                    print("Error: Could print JSON in String")
                                    return
                                }
                                
                                //print(prettyPrintedJson["message"])
                                let json=JSON(AFdata.data as Any)
                                if let authentication = json["message"].string{
                                    if authentication=="Authentication Successful"{
                                        isLoginCorrect.toggle()
                                        currentUser=username
                                    }
                                    else{
                                        isLoginCorrect=false
                                        showErrorMessage=true
                                        showForgotPassword=true
                                    }
                                }
                            } catch {
                                print("Error: Trying to convert JSON data to string")
                                return
                            }
                        }                    }
                
                
            }
            NavigationLink("",destination: MainMenuView(), isActive: $isLoginCorrect)
        }
        
        
        
        
        
        
        
        
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
            guard String(data: prettyJsonData, encoding: .utf8) != nil else {
                print("Error: Could print JSON in String")
                return
            }
            
            //print(prettyPrintedJson["message"])
            let json=JSON(AFdata.data as Any)
            if let authentication = json["message"].string{
                if authentication=="Authentication Successful"{
                    print("Success")
                    loginVar=true
                }
                else{
                    print("Fail")
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
        LoginView().preferredColorScheme(.dark)
    }
}
