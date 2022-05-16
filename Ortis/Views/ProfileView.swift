//
//  ProfileView.swift
//  Ortis
//
//  Created by William Strickland on 12/30/21.
//

import SwiftUI
import Alamofire
import SwiftyJSON
let userServices=UserServices()

struct ProfileView: View {
    @State var userInfo=[UserInfo]();
    @State var followers=0;
    var body: some View {
        
        
        VStack {
            
            
            VStack{
                HStack {
                    
                    Circle() // this is profile picture
                        .frame(width: 80, height: 80)
                    //have this add follower and following to database
                    NavigationLink(destination:MainMenuView()){FollowButton().padding(.leading, 140)}
                    
                }
                Text("\(firstName) \(lastName)")
                    .font(.title3)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.top],5)
                Text(bio)// Bio Spot - Gets input from the Bio section in the settings page
                    .padding([.top, .bottom], 5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                // counters for followers, videos, and following
                HStack{
                    
                    NavigationLink(destination:FollowersPage()){Followers()}
                    
                    .padding(.leading)
                    VStack {
                        Text("54") // counter for video count
                            .font(.title3)
                        Button(action: {
                            print("video counter button test")
                        }) {
                            Text("Videos".uppercased())
                                .underline()
                                .font(.body)
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.leading)
                    NavigationLink(destination:FollowingPage()){Following()}                                .padding(.leading)
                }
                .padding(.bottom, -20)
                
                
                
                
                
            }
            Spacer()
        }
        .toolbar{
            ToolbarItem(placement: .primaryAction){
                Image("Logo").resizable()
                    .frame(width: 30, height: 30)
            }
            ToolbarItem(placement: .principal){
                Text(currentUser.uppercased())
                    .fontWeight(.semibold)
                    .font(.largeTitle)
                    .kerning(14.0)
                    .foregroundColor(Color("SecondaryColor"))
                
            }
            ToolbarItem(placement: .cancellationAction){
                NavigationLink(destination:SettingsPageView().navigationBarBackButtonHidden(true)){Settingsbutton()}
            }
            ToolbarItemGroup(placement:.bottomBar){
                NavigationLink(destination:EditingPageView().navigationBarBackButtonHidden(true)){EditingPageButton().padding([.top, .trailing], 20.0)}
                NavigationLink(destination:DiscoverPage().navigationBarBackButtonHidden(true)){DiscoverButton().padding([.top, .trailing], 20.0)}
                NavigationLink(destination:MainMenuView().navigationBarBackButtonHidden(true)){HomeButton().padding([.top, .leading, .trailing], 20.0)}
                NavigationLink(destination:ProfileView().navigationBarBackButtonHidden(true)){ProfileButton().padding([.top, .leading,], 20.0)}
            }
        }
        
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView().preferredColorScheme(.dark)
    }
}
