//
//  ContentView.swift
//  Ortis
//
//  Created by William Strickland on 12/26/21.
//

import SwiftUI


struct ContentView: View {
    @State var users = [User]()
    
    //let vc=ViewController()
    var body: some View {
              
            //RegisterPage()
            //SignUpView()
            //LoginView()
         //   MainMenuView()
           // ProfileView()
            DiscoverPage()
            //SelectedVideo()
           // EditingPageView()
            //VideoDetails()
            //FollowersPage()
            //FollowingPage()
            //SettingsPageView()
            //SettingsProfilePicture()
            //SettingsEditBio()
            //SettingsPhoneNumber()
            //SettingsPrivacy()
            //SettingsUsername()
            //SettingsNotifications()
            //SettingsPassword()
           
//        List(users) { user in
//            Text("\(user.firstName)   \(user.lastName)")
//        }
//                .onAppear() {
//                    Api().loadData { (users) in
//                        self.users = users
//                    }
//                }.navigationTitle("User List")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
