//
//  EditingPageView.swift
//  Ortis
//
//  Created by Blaise Wittern on 3/31/22.
//

import SwiftUI
import PixelSDK
import UIKit
struct EditingPageView: View {
    @State var ecd:EditControllerDelegate?=nil
    @State var image:Image?=nil
    @State var showCaptureImageView: Bool = false
    var body: some View {
        
        
        VStack{
            
            image?.resizable()
                    .frame(width: 250, height: 250)
                    .shadow(radius: 10)
            
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
                        AddButton().onTapGesture {
                            
                        } // this opens the camera roll for videos from last 48 hours
                        
                        
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
            if (showCaptureImageView) {
                    CaptureImageView(isShown: $showCaptureImageView, image: $image)
            }
            
            
            
            
            BottomBar()
                .padding(.bottom, -20.0)
                .frame(minHeight:0,maxHeight: .infinity,alignment: .bottom)
            
            
        }.toolbar{
            ToolbarItem(placement: .primaryAction){
                NavigationLink(destination:VideoDetails().navigationBarBackButtonHidden(true)){NextButton()}
            }
            ToolbarItem(placement: .principal){
                Text(currentUser.uppercased())
                    .fontWeight(.semibold)
                    .font(.largeTitle)
                    .kerning(14.0)
                    .foregroundColor(Color("SecondaryColor"))
                
            }
            ToolbarItem(placement: .cancellationAction){
                DraftButton()
                    .padding(.trailing, 200)
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


struct EditingPageView_Previews: PreviewProvider {
    static var previews: some View {
        EditingPageView().preferredColorScheme(.dark)
    }
}
