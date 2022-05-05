//
//  MainMenuView.swift
//  Ortis
//
//  Created by William Strickland on 12/30/21.
//

import SwiftUI

struct MainMenuView: View {
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
            .padding(.bottom, 10)
        BottomBar()
            .padding(.top, -30)
        
                VStack{
                    //user added content here!!
                   
                    VStack{
                        NavigationLink(destination:SelectedVideo()){ThumbnailButton()}
                        NavigationLink(destination:SelectedVideo()){ThumbnailButton()}
                        NavigationLink(destination:SelectedVideo()){ThumbnailButton()}
                        NavigationLink(destination:SelectedVideo()){ThumbnailButton()}
                       

                    }
                   // .padding(.bottom, 60)
                 
                    
                    VStack{
                        BottomBar()
                            .padding(.bottom, -90.0)
                    }
                    .frame(minHeight:0,maxHeight: .infinity,alignment: .bottom)
                    
                    
                    HStack{
                        
                        NavigationLink(destination:EditingPageView()){EditingPageButton().padding([.top, .trailing], 20.0)}
                        NavigationLink(destination:DiscoverPage()){DiscoverButton().padding([.top, .trailing], 20.0)}
                        NavigationLink(destination:MainMenuView()){HomeButton().padding([.top, .leading, .trailing], 20.0)}
                        NavigationLink(destination:ProfileView()){ProfileButton().padding([.top, .leading,], 20.0)}
                        
                        
                    }
                    .padding(.bottom,110)
                }
            }
        }
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView().preferredColorScheme(.dark)
    }
}
