//
//  SignUpButton.swift
//  Ortis
//
//  Created by William Strickland on 12/31/21.
//

import SwiftUI

struct SignUpButton: View {
    var body: some View {
        ZStack{
            Capsule()
                .fill(Color("SecondaryColor"))
                .frame(width: 160, height: 60, alignment: .center)
        
        
            Text("Sign Up")
                .fontWeight(.semibold)
                .font(.largeTitle)
                .foregroundColor(Color(red: 1.0, green: 0.0,        blue: 0.0, opacity: 1.0))
            
            
        
        }.padding(.bottom)
        
    }
}

struct SignUpButton_Previews: PreviewProvider {
    static var previews: some View {
        SignUpButton()
    }
}
