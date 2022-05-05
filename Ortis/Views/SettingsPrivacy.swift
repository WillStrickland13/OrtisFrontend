//
//  SettingsPrivacy.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/12/22.
//

import SwiftUI

struct SettingsPrivacy: View {
    @State private var privacy = true
    var body: some View {
        VStack{
            
            HStack {
                
                NavigationLink(destination:SettingsPageView()){BackButton()}.padding(.leading, -100)
                    

                    
                Text("Privacy".uppercased())
                            .fontWeight(.semibold)
                            .font(.body)
                            .kerning(5.0)
                            .foregroundColor(Color(.white))
                            .underline()
                            .padding(.all, 10)
                    
            }
            .padding(.top, -320)
            
            VStack {
                       Toggle("Private Account", isOn: $privacy)
                   

                       if privacy {
                           Text("Toggle between Public and Private acount!")
                       }
            
        }
            //.padding(.top,50)
    }
}

struct SettingsPrivacy_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPrivacy().preferredColorScheme(.dark)
    }
}
    }
