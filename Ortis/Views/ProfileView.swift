//
//  ProfileView.swift
//  Ortis
//
//  Created by William Strickland on 12/30/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
       
        
            NavigationView{
                
                VStack {
                    
                        HStack {
                           
                            NavigationLink(destination:SettingsPageView()){Settingsbutton().padding(.leading, -30)}
                                .frame(width: 30, height: 30)
                               
                                
                            // change to the username of the profile page
                            NavigationLink(destination:SelectedVideo()){ Text("Will strickland".uppercased())
                                        .fontWeight(.semibold)
                                        .font(.body)
                                        .kerning(5.0)
                                        .foregroundColor(Color(.white))
                                        .underline()
                                .padding(.all, 10) }
                            Image("Logo").resizable()
                                .frame(width: 30, height: 30)
                                
                        }
                       

                    BottomBar()
                        .padding(.top, -20)
                    
                        
                        
                        VStack{
                            HStack {
                                
                                Circle() // this is profile picture
                                    .frame(width: 80, height: 80)
                                //have this add follower and following to database
                                NavigationLink(destination:HomePageView()){FollowButton().padding(.leading, 140)}
                                
                            }
                            
                            VStack(alignment: .leading) {
                            Text("Will Strickland")// Name spot
                                .font(.title3)
                                .fontWeight(.bold)
                                
                                
                            Text("This the spot for user input for Bio (where they live, what they do, a quote, whatever")// Bio Spot - Gets input from the Bio section in the settings page
                                .padding([.top, .bottom], 5)
                            }
                            
                           
                            
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
                    
                    BottomBar()
                
                VStack{
                    //user added content here!!
                    HStack{
                        NavigationLink(destination:SelectedVideo()){ProfileThumbnail()}
                            .padding([.top,.bottom], 5)
                        
                        NavigationLink(destination:SelectedVideo()){ProfileThumbnail()}
                            .padding([.top,.bottom],5)
                 
                    }
                    
                    HStack{
                        NavigationLink(destination:SelectedVideo()){ProfileThumbnail()}
                            .padding([.top,.bottom], 5)
                        
                        NavigationLink(destination:SelectedVideo()){ProfileThumbnail()}
                            .padding([.top,.bottom],5)
                 
                    }
                    
                    HStack{
                        NavigationLink(destination:SelectedVideo()){ProfileThumbnail()}
                            .padding([.top,.bottom], 5)
                        
                        NavigationLink(destination:SelectedVideo()){ProfileThumbnail()}
                            .padding([.top,.bottom],5)
                 
                    }
                    
                    HStack{
                        NavigationLink(destination:SelectedVideo()){ProfileThumbnail()}
                            .padding([.top,.bottom], 5)
                        
                        NavigationLink(destination:SelectedVideo()){ProfileThumbnail()}
                            .padding([.top,.bottom],5)
                 
                    }
                    
                    
                    
                    
                    VStack{
                        BottomBar()
                            .padding(.bottom, -30.0)
                    }.frame(minHeight:0,maxHeight: .infinity,alignment: .bottom)
                    
                    
                    
                    
                    HStack{
                        
                        NavigationLink(destination:EditingPageView()){EditingPageButton().padding([.top, .trailing], 20.0)}
                        NavigationLink(destination:DiscoverPage()){DiscoverButton().padding([.top, .trailing], 20.0)}
                        NavigationLink(destination:MainMenuView()){HomeButton().padding([.top, .leading, .trailing], 20.0)}
                        NavigationLink(destination:ProfileView()){ProfileButton().padding([.top, .leading,], 20.0)}
                        
    
                    }
                    .padding(.bottom,100)
                }
            }
        }
        
        
        
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView().preferredColorScheme(.dark)
    }
}
