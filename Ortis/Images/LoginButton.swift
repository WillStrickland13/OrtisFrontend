//
//  LoginButton.swift
//  Ortis
//
//  Created by William Strickland on 12/31/21.
//

import SwiftUI

struct LoginButton: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(Color("SecondaryColor"))
                .frame(width: 160, height: 60, alignment: .center)
            
                Text("Log In")
                    .fontWeight(.semibold)
                    .font(.largeTitle)
                    .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                    .padding(.top, 1.0)
                
                
            
        }
    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        LoginButton().preferredColorScheme(.dark)
    }
}
