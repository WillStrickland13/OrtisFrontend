//
//  LoginView.swift
//  Ortis
//
//  Created by William Strickland on 12/31/21.
//

import SwiftUI

struct LoginView: View {
    @State var username: String=""
    @State var password: String=""
    var body: some View {
        VStack{
            Image("Logo").resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Text("Log In")
                .fontWeight(.semibold)
                .font(.largeTitle)
            TextField("Username", text: $username)
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
