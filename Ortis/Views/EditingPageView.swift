//
//  EditingPageView.swift
//  Ortis
//
//  Created by Blaise Wittern on 3/31/22.
//

import SwiftUI

struct EditingPageView: View {
    var body: some View {
        
       
            VStack{
                
                HStack {
                    DraftButton()
                        .padding(.trailing, 200)
                    
                    NavigationLink(destination:VideoDetails()){NextButton()}
                }
                .padding(.top, -100)
                
                
                
                
                
                
                Rectangle() // where the video preview should be
                    .overlay(
                        PlayButton()
                            .padding(.leading, 300)
                            .padding(.top, -130)
                    )
                    .overlay(
                    ExpandButton()
                        .padding(.leading, -190)
                        .padding(.top, -110)
                    
                    )
                    .overlay(Text("This is the preview of the video")
                        .foregroundColor(.black)) // this text can be deleted later
                    
                
                
                
                
                
                
            
                

                
                
                VStack {
                HStack{
                    MusicButton().padding()
                    TextButton().padding()
                    FilterButton().padding()
                    CutButton().padding()
                    TrashButton().padding()
                }
                
                    
                    
                    VStack(alignment: .trailing ){
                    Rectangle() // first rectangle is a timeline for music
                        .strokeBorder(Color.white ,lineWidth: 3.0)
                        .frame(width: 320, height: 60)
                        .overlay(Text("Music timline")
                            .foregroundColor(.gray))
                        
                        
                    HStack{
                AddButton() // this opens the camera roll for videos from last 48 hours
                        
                        
                        Rectangle() // middle rectangle is for actual vides, adding then with the add button
                            .strokeBorder(Color.white ,lineWidth: 3.0)
                            .frame(width: 320, height: 60)
                            .overlay(Text("video timline")
                                .foregroundColor(.gray))
                    }
                        
                        
                        
                        Rectangle() //last rectangle is effects like text and filters
                            .strokeBorder(Color.white ,lineWidth: 3.0)
                            .frame(width: 320, height: 60)
                            .overlay(Text("filter and text timline")
                                .foregroundColor(.gray))
                
                }
                }
                .padding(.bottom,-200)
               
                
                
               
               
                    BottomBar()
                        .padding(.bottom, -20.0)
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


struct EditingPageView_Previews: PreviewProvider {
    static var previews: some View {
        EditingPageView().preferredColorScheme(.dark)
    }
}
