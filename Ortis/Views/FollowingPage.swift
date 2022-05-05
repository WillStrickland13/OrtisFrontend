//
//  FollowingPage.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/21/22.
//

import SwiftUI

struct FollowingPage: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                NavigationLink(destination:ProfileView()){BackButton()}.padding([.top, .bottom ], 20)
                    .padding(.leading,20)
                    //destination is previous page
                
                Text("Following")
                    .padding(.leading, 90)
                    .padding(.bottom, 100)
                    .font(.title)
                  
            }
            
            // these all need to be turned into buttons
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

struct FollowingPage_Previews: PreviewProvider {
    static var previews: some View {
        FollowingPage().preferredColorScheme(.dark)
    }
}
