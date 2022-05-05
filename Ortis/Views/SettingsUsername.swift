//
//  SettingsUsername.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/12/22.
//

import SwiftUI

struct SettingsUsername: View {
    
    @State var username: String = ""
    
    var body: some View {
        
        VStack {
            HStack {
                
                NavigationLink(destination:SettingsPageView()){BackButton()}

                    
                Text("Change Username".uppercased())
                            .fontWeight(.semibold)
                            .font(.body)
                            .kerning(5.0)
                            .foregroundColor(Color(.white))
                            .underline()
                            .padding(.all, 10)
                    
            }
            
            VStack {
        TextField("Old Username", text: $username)
            .padding()
            .background(Color(.gray))
            .foregroundColor(Color(.white))
            .cornerRadius(5.0)
            .padding(.bottom, 3)
            TextField("New Username", text: $username)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            TextField("Confirm Username", text: $username)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
        SaveButton()
               
    }
            .padding([.top,.bottom], 200)
       
    }
        
}

struct SettingsUsername_Previews: PreviewProvider {
    static var previews: some View {
        SettingsUsername().preferredColorScheme(.dark)
    }
}
}
