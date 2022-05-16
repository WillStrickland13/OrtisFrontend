//
//  SettingsEditBio.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/12/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON
struct SettingsEditBio: View {
    @State var bio: String = ""
    var body: some View {
        
        
        VStack {
            
            HStack {
                
                NavigationLink(destination:SettingsPageView()){BackButton()}
                    .padding(.leading,-150)
                    
                Text("bio".uppercased())
                            .fontWeight(.semibold)
                            .font(.body)
                            .kerning(5.0)
                            .foregroundColor(Color(.white))
                            .underline()
                    
            }
            .padding(.top, 200)
            
            
            
        TextField("Bio...", text: $bio)
                .frame(width: 360, height: 150)
            .padding()
            .background(Color(.gray))
            .foregroundColor(Color(.white))
            .cornerRadius(5.0)
            .padding(.top, 350)
            
            SaveButton()
                .padding(.top, 150)
                .padding(.bottom, 200)
        }
        
    }
}

struct SettingsEditBio_Previews: PreviewProvider {
    static var previews: some View {
        SettingsEditBio().preferredColorScheme(.dark)
    }
}
