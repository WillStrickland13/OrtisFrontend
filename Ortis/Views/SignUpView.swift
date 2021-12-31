//
//  SignUpView.swift
//  Ortis
//
//  Created by William Strickland on 12/31/21.
//

import SwiftUI

struct SignUpView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack{
            Image("Logo").resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Text("Sign up")
                .fontWeight(.semibold)
                .font(.largeTitle)
            HStack{
            TextField("First Name", text: $firstName)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            TextField("Last Name", text: $lastName)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            }
            TextField("Username", text: $username)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            TextField("Email", text: $email)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)
                .padding(.bottom, 3)
        }.padding()
            
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
