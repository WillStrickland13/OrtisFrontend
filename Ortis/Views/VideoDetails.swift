//
//  VideoDetails.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/17/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON
struct VideoDetails: View {
    @State var description: String = ""
    @State var title: String = ""
    var body: some View {
   
        
        VStack {
            
            HStack {
                
                NavigationLink(destination:EditingPageView()){BackButton()}
                    .padding(.leading,-60)
                    
                Text("Video Details".uppercased())
                            .fontWeight(.semibold)
                            .font(.body)
                            .kerning(5.0)
                            .foregroundColor(Color(.white))
                            .underline()
                    
            }
            .padding(.bottom, 100)
            
            
            Text("Thumbnail".uppercased())
                        .fontWeight(.semibold)
                        .font(.body)
                        .kerning(5.0)
                        .foregroundColor(Color(.white))
                        .underline()
            
            HStack { // frames of the video to select thumbnail, sliding around
                Image(uiImage: imageToPost!)
                    .resizable()
                    
                    
           
            }
            .padding(.bottom,50)
            
            
            
            
            TextField("Title...", text: $title)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding(.bottom,50)
                
            
            
            
        TextField("Description...", text: $description)
                .frame(width: 360, height: 150)
            .padding()
            .background(Color(.gray))
            .foregroundColor(Color(.white))
            .cornerRadius(5.0)
            .padding(.bottom,100)
            
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
    
       
        }
    
}

//struct titleAndDescriptionPage_Previews: PreviewProvider {
//    static var previews: some View {
//        VideoDetails().preferredColorScheme(.dark)
//    }
//}
