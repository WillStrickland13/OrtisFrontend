//
//  SignUpView.swift
//  Ortis
//
//  Created by William Strickland on 12/31/21.
//

import SwiftUI
import Alamofire
struct SignUpView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var phNumber: String = ""
    var body: some View {
        VStack{
            Image("Logo").resizable()
                .frame(width: 175, height: 175, alignment: .center)
                .padding(.bottom, 10)
            HStack{
            TextField("First Name", text: $firstName)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            TextField("Last Name", text: $lastName)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            }
            .padding(.top)
            TextField("Username", text: $username)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            
            TextField("Email", text: $email)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            TextField("Phone Number", text: $phNumber)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            ZStack{
                Text("Sign Up")
                    .fontWeight(.bold)
                    .font(.title2)
                    .padding()
                    .background(Color("SecondaryColor"))
                    .cornerRadius(15)
                    .foregroundColor(Color("PrimaryColor"))
                    .padding(10)
                    
                    
            
            }.padding()
                .onTapGesture {
                    print(firstName,lastName,username,email,password)
                    postUser(first:firstName,last:lastName,user:username,em:email,pswd:password,phoneNum:phNumber)
                }
        }.padding()
            
    }
}

func postUser(first:String, last:String, user:String, em:String, pswd:String, phoneNum:String){
    let params:Parameters=[
        "firstName":first,
        "lastName":last,
        "username":user,
        "email":em,
        "password":pswd,
        "phoneNumber":phoneNum
    ]

    AF.request("http://0.0.0.0:8000/users/register", method: .post, parameters: params, encoding: JSONEncoding.default, headers: nil).validate(statusCode: 200 ..< 299).responseJSON { AFdata in
            
        }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView().preferredColorScheme(.dark)
    }
}
