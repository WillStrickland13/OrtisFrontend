//
//  SelectedVideo.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/5/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON
struct SelectedVideo: View {
    @State var comment: String = ""
    var body: some View {
        
        
        VStack {
            
            
            
            
            
            BottomBar()
                .padding(.top, -20)
            
            
                // profile details here below
                //
                //Profile Picture that is edited in the settings
                //
                
                VStack(alignment: .leading){
                    
                   // Rectangle()
                    Image("Image")
                        .resizable()
                        .overlay(
                        Rectangle()
                            .foregroundColor(.black)
                            .opacity(0.7)
                    )
                        .overlay(
                            VStack(alignment: .leading) {
                        Text("Video Title")
                            .fontWeight(.semibold)
                            .font(.body)
                            .kerning(3.0)
                            .foregroundColor(Color(.white))
                            .underline()
                                
                        Text("Description of the video right below, this is in front of the video that will disappear after a few seconds, then comeback for a few seconds if user clicks screen. this frees up a lot of space")
                        Text("")
                        Text("1,746 Views")// number of views
                                    .foregroundColor(.gray)
                                Text("")
                                Text("June 17, 2022")
                                    .foregroundColor(.gray)
                            }
                        )
                                
                      
                    
                    
                   
                }
            
            BottomBar()
            
            VStack {
            
            HStack {
                LikeButton() //counter for likes
                Text("2,846") //this is just a holder to show what it looks like
                    .font(.title3)
                    .underline()
                    .fontWeight(.bold)
                CommentButton().padding(.leading, 100) //counter for comments
                Text("583") //this is just a holder to show what it looks like
                    .font(.title3)
                    .underline()
                    .fontWeight(.bold)
                    
                
            }
                
                HStack {
                    ProfilePicButton() //profile picture of the User (you) making a comment
                        .frame(width: 40, height: 40)
                        .padding(.leading,40)
                
                TextField("Comment", text: $comment)
                    .padding()
                    .background(Color(.gray))
                    .foregroundColor(Color(.white))
                    .cornerRadius(5.0)
                    .padding(.bottom, 3)
                    
                }
                .padding(.leading, -30)
            }
            .padding(.top,-25)
            
            
            
    
          
            
    
           // NavigationView{
                VStack{
                    
                   
                    
                    //Other user input for comments here
                    VStack(alignment: .leading) {
                    //Comments Here
                    
                    
                   
                    
                  
                    }
                    .padding(.leading,-100)
                    //.padding(.bottom, -20)
                    
                    
                    
                    
                    
                    
                    
                   
                        BottomBar()
                            .padding(.bottom, -20.0)
                    .frame(minHeight:0,maxHeight: .infinity,alignment: .bottom)
                    
                    
                   
                }
            }.toolbar{
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
                    NavigationLink(destination:MainMenuView().navigationBarBackButtonHidden(true))
                        {BackButton()}
    //                    .padding(.leading,-60)
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


struct SelectedVideo_Previews: PreviewProvider {
    static var previews: some View {
        SelectedVideo().preferredColorScheme(.dark)
    }
}
