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
    var body: some View {
        VStack{
            Image("Logo").resizable()
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 125, height: 125, alignment: .center)
            HStack{
            TextField("First Name", text: $firstName)
                .padding()
                .background(Color("SecondaryColor"))
                .foregroundColor(Color("PrimaryColor"))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            TextField("Last Name", text: $lastName)
                .padding()
                .background(Color("SecondaryColor"))
                .foregroundColor(Color("PrimaryColor"))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            }
            .padding(.top)
            TextField("Username", text: $username)
                .padding()
                .background(Color("SecondaryColor"))
                .foregroundColor(Color("PrimaryColor"))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            
            TextField("Email", text: $email)
                .padding()
                .background(Color("SecondaryColor"))
                .foregroundColor(Color("PrimaryColor"))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            SecureField("Password", text: $password)
                .padding()
                .background(Color("SecondaryColor"))
                .foregroundColor(Color("PrimaryColor"))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            ZStack{
                Text("Sign Up")
                    .fontWeight(.bold)
                    .font(.title2)
                    .padding()
                    .background(Color("SecondaryColor"))
                    .cornerRadius(40)
                    .foregroundColor(Color("PrimaryColor"))
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color("SecondaryColor"), lineWidth: 5))
            
            }.padding()
                .onTapGesture {
                    print(firstName,lastName,username,email,password)
                    postUser(first:firstName,last:lastName,user:username,em:email,pswd:password)
                }
        }.padding()
            
    }
}

func postUser(first:String, last:String, user:String, em:String, pswd:String){
    let params:Parameters=[
        "firstName":first,
        "lastName":last,
        "username":user,
        "email":em,
        "password":pswd
    ]

    AF.request("http://0.0.0.0:8000/users/register", method: .post, parameters: params, encoding: JSONEncoding.default, headers: nil).validate(statusCode: 200 ..< 299).responseJSON { AFdata in
            
        }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
