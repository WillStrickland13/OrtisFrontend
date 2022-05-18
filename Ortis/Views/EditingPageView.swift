//
//  EditingPageView.swift
//  Ortis
//
//  Created by Blaise Wittern on 3/31/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON
import PixelSDK
import UIKit
struct EditingPageView: View {
    @State var description: String = ""
    @State var title: String = ""
    @State private var showCaptureImageView = false
    @ObservedObject var vc = ViewController()
    var body: some View {
        
        
        VStack{
            
            
            if(self.vc.isDoneEditing){
                Image(uiImage: self.vc.img!)
                    .resizable()
                    .scaledToFit()
                    .onAppear(){
                        print("adding img")
                    }
            }
           
                
            
            
            
            
            VStack {
//                HStack{
//                    MusicButton().padding()
//                    TextButton().padding()
//                    FilterButton().padding()
//                    CutButton().padding()
//                    TrashButton().padding()
//                }
                
                
                AddButton().onTapGesture {
                    showCaptureImageView=true
                }
                
                TextField("Title...", text: $title)
                    .padding()
                    .background(Color(.gray))
                    .foregroundColor(Color(.white))
                    .cornerRadius(5.0)
                
                TextField("Description...", text: $description)
                    .frame(width: 360, height: 150)
                    .padding()
                    .background(Color(.gray))
                    .foregroundColor(Color(.white))
                    .cornerRadius(5.0)
                    .padding(.bottom,25)
                
                
                Button(action: { //this actually post the video
                    print("Posting button test")
                }) {
                    Text("Post")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.white))
                        .underline()
                }
                .padding(.bottom, 50)
                    
                
            }
            .padding(.bottom,-200)
            .sheet(isPresented:$showCaptureImageView){
                ViewController.ImagePicker(vc:vc)
                
            }
            
            
            
            BottomBar()
                .padding(.bottom, -20.0)
                .frame(minHeight:0,maxHeight: .infinity,alignment: .bottom)
            
            
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




struct ModalView: View {
    @Binding var presentedAsModal: Bool
    var body: some View {
        Button("dismiss") { self.presentedAsModal = false }
    }
}

struct EditingPageView_Previews: PreviewProvider {
    static var previews: some View {
        EditingPageView().preferredColorScheme(.dark)
    }
}
