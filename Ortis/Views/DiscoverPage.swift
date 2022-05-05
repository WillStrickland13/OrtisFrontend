//
//  DiscoverPage.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/21/22.
//

import SwiftUI

struct DiscoverPage: View { // This is all just randomly generated videos from random people till we get an algo.
    var body: some View {
        NavigationView{
        VStack {
        
            HStack {
                // change this to a NavigationLink to search bar
                NavigationLink(destination:SettingsUsername()){SearchButton()}
                    .padding(.leading, -50)
                Text("Ortis".uppercased())
                    .fontWeight(.semibold)
                    .font(.largeTitle)
                    .kerning(14.0)
                    .foregroundColor(Color("SecondaryColor"))
                    .padding([.leading,.trailing], 50)
                Image("Logo").resizable()
                    .frame(width: 30, height: 30)
                    .padding(.trailing, -50)
            }
                .padding(.top, -90)
            
            BottomBar()
                .padding(.top, -70)
                
            VStack{
                
            }
                
            
            //NavigationView{
                VStack{
                    //user added content here!!
                    //This is a to show what it looks like
                    //made it all Hstacks within a Vstack
                    
                    
                    
                    Text("Popular".uppercased())
                            .fontWeight(.semibold)
                            .font(.title)
                            .kerning(15.0)
                            .foregroundColor(Color(.white))
                            .underline()
                            //.padding(.top, 50)
                                       
                HStack { // videos with the highest views
                    NavigationLink(destination:SelectedVideo()){PopularThumbnail()}
                        .padding(.bottom, 30)
                    NavigationLink(destination:SelectedVideo()){PopularThumbnail()}
                        .padding(.bottom, 30)
                    NavigationLink(destination:SelectedVideo()){PopularThumbnail()}
                        .padding(.bottom, 30)
                                       }
                    
                    Text("Trending".uppercased())
                            .fontWeight(.semibold)
                            .font(.title)
                            .kerning(15.0)
                            .foregroundColor(Color(.white))
                            .underline()
    
                    VStack { // trending popular videos
                        NavigationLink(destination:SelectedVideo()){ThumbnailButton()}
                        NavigationLink(destination:SelectedVideo()){ThumbnailButton()}
                       
                    }
                    
                    
                    
                    VStack{
                        BottomBar()
                            .padding(.bottom, -30.0)
                    }
                    .frame(minHeight:0,maxHeight: .infinity,alignment: .bottom)
                    
                    HStack{
                        
                        NavigationLink(destination:EditingPageView()){EditingPageButton().padding([.top, .trailing], 20.0)}
                        NavigationLink(destination:DiscoverPage()){DiscoverButton().padding([.top, .trailing], 20.0)}
                        NavigationLink(destination:MainMenuView()){HomeButton().padding([.top, .leading, .trailing], 20.0)}
                        NavigationLink(destination:ProfileView()){ProfileButton().padding([.top, .leading,], 20.0)}
                        
                        
                        
                        
                    }
                   
                }
                   
            }
        }
        
    }
        
}

    

struct DiscoverPage_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverPage().preferredColorScheme(.dark)
    }
}

    

