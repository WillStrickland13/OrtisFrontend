//
//  SettingsProfilePicture.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/12/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON
struct SettingsProfilePicture: View {
    var body: some View {
        VStack{
            HStack {
                
                NavigationLink(destination:SettingsPageView()){BackButton()}

                    
            
                Text("Profile Picture".uppercased())
                            .fontWeight(.semibold)
                            .font(.body)
                            .kerning(5.0)
                            .foregroundColor(Color(.white))
                            .underline()
                            .padding(.all, 10)
                            
                    
            }
            .padding(.top, 200)
            
       ProfilePicButton() // this is the profile picture
            .frame(width: 300, height: 300)
            .padding([.bottom,.top], 130)
            VStack {
            HStack {
                SelectPhotoButton()
                TakePhotoButton()
            }
                SaveButton() //saves profile picture to account
            }
            .padding(.bottom,200)
        }
    }
}

struct SettingsProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        SettingsProfilePicture().preferredColorScheme(.dark)
    }
}
