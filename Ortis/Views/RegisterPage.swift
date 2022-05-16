//
//  RegisterPage.swift
//  Ortis
//
//  Created by William Strickland on 12/30/21.
//

import SwiftUI
import Alamofire
import SwiftyJSON
struct RegisterPage: View {
    var body: some View {
        
            VStack{
                Text("Ortis".uppercased())
                    .fontWeight(.semibold)
                    .font(.largeTitle)
                    .kerning(10.0)
                    .foregroundColor(Color("SecondaryColor"))
                    
                    
                   
                    
                    Image("Logo").resizable()
                        .frame(width: 120, height: 120)
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

struct RegisterPage_Previews: PreviewProvider {
    static var previews: some View {
        RegisterPage().preferredColorScheme(.dark)
        
    }
}

