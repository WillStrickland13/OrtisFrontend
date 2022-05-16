//
//  SettingsPageView.swift
//  Ortis
//
//  Created by Blaise Wittern on 3/30/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON
struct SettingsPageView: View {
    var body: some View {
        
            
        
        VStack(alignment: .leading ){
            HStack {
                NavigationLink(destination:ProfileView().navigationBarBackButtonHidden(true)){BackButton()}.padding([.top, .bottom ], 20)
                    .padding(.leading,20)
                    //destination is previous page
                
                Text("Settings")
                    .padding(.leading, 110)
                    .padding(.bottom, 100)
                    .font(.title)
                    
                  
            }
            
            
            Button(action: { // go to SettingsProfilePicture
                print("Profile pic button test")
            }) {
                Text("Profile Picture").underline()
                    .foregroundColor(.white)
            }
                .padding()
            Button(action: { //go to settingsEditBio
                print("Edit bio button test")
            }) {
                Text("Edit Bio").underline()
                    .foregroundColor(.white)
            }
                .padding()
            Button(action: { //go to SettingsPhoneNumber
                print("phone number button test")
            }) {
                Text("Phone Number").underline()
                    .foregroundColor(.white)
            }
                .padding()
            Button(action: { // go to SettingsPrivacy
                print("Privacy button test")
            }) {
                Text("Privacy Picture").underline()
                    .foregroundColor(.white)
            }
                .padding()
            Button(action: { //go to Settings Notifications
                print("Notifications button test")
            }) {
                Text("Push Notifications").underline()
                    .foregroundColor(.white)
            }
                .padding()
            Button(action: { // go to SettingsUsername
                print("Change Username button test")
            }) {
                Text("Change Username").underline()
                    .foregroundColor(.white)
            }
                .padding()
            Button(action: { //go to SettingsPassword
                print("Change Password button test")
            }) {
                Text("Change Password").underline()
                    .foregroundColor(.white)
            }
                .padding()
            Button(action: {
                print("log off button test")
            }) {
                Text("Log Off").underline() // pop up window
                    .foregroundColor(.white)
            }
                .padding()
            
            
        }
        .font(.title)
        .padding(.trailing, 150)
        .frame(width: 450)
        
        
        
        
        
}
       

struct SettingsPageView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPageView().preferredColorScheme(.dark)
    }
}

}








    

