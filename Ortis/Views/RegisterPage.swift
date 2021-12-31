//
//  RegisterPage.swift
//  Ortis
//
//  Created by William Strickland on 12/30/21.
//

import SwiftUI

struct RegisterPage: View {
    var body: some View {
        NavigationView{
            VStack{
                Image("Logo").resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                   
                NavigationLink(destination:SignUpView()){
                    SignUpButton()
                }
                NavigationLink(destination:LoginView()){
                    LoginButton()
                }
                
            }
        }
    }
}

struct RegisterPage_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPage()
    }
}
