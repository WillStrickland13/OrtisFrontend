//
//  FollowersPage.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/21/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON
struct FollowersPage: View {
    var body: some View {
        
        VStack(alignment: .leading ){
            HStack {
                NavigationLink(destination:ProfileView()){BackButton()}.padding([.top, .bottom ], 20)
                    .padding(.leading,20)
                  
                
                Text("Followers")
                    .padding(.leading, 100)
                    .padding(.bottom, 100)
                    .font(.title)
                  
            }
            
            HStack {
                NavigationLink(destination:ProfileView()){ProfilePicButton()}
                    .frame(width: 50, height: 50)
                NavigationLink(destination:ProfileView()){UsernameButton()}
                .padding()
            }
            HStack {
                NavigationLink(destination:ProfileView()){ProfilePicButton()}
                    .frame(width: 50, height: 50)
                NavigationLink(destination:ProfileView()){UsernameButton()}
                .padding()
            }
            HStack {
                NavigationLink(destination:ProfileView()){ProfilePicButton()}
                    .frame(width: 50, height: 50)
                NavigationLink(destination:ProfileView()){UsernameButton()}
                .padding()
            }
            HStack {
                NavigationLink(destination:ProfileView()){ProfilePicButton()}
                    .frame(width: 50, height: 50)
                NavigationLink(destination:ProfileView()){UsernameButton()}
                .padding()
            }
            HStack {
                NavigationLink(destination:ProfileView()){ProfilePicButton()}
                    .frame(width: 50, height: 50)
                NavigationLink(destination:ProfileView()){UsernameButton()}
                .padding()
            }
            HStack {
                NavigationLink(destination:ProfileView()){ProfilePicButton()}
                    .frame(width: 50, height: 50)
                NavigationLink(destination:ProfileView()){UsernameButton()}
                .padding()
            }
            HStack {
                NavigationLink(destination:ProfileView()){ProfilePicButton()}
                    .frame(width: 50, height: 50)
                NavigationLink(destination:ProfileView()){UsernameButton()}
                .padding()
            }
            HStack {
                NavigationLink(destination:ProfileView()){ProfilePicButton()}
                    .frame(width: 50, height: 50)
                NavigationLink(destination:ProfileView()){UsernameButton()}
                .padding()
            }
            
            
        }
        .font(.title)
        .padding(.trailing, 100)
        .frame(width: 450)
    }
}

struct FollowersPage_Previews: PreviewProvider {
    static var previews: some View {
        FollowersPage().preferredColorScheme(.dark)
    }
}
