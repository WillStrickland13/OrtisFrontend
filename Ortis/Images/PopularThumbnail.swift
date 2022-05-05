//
//  PopularThumbnail.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/21/22.
//

import SwiftUI

struct PopularThumbnail: View {
    var body: some View {
      
          // Rectangle()
        Image("Image") // this is just an example thumbnail
            .resizable()
                .frame(width: 300, height: 150)
                .foregroundColor(.white)
                
                .overlay(
        Rectangle()
                        .foregroundColor(.black)
                        .opacity(0.5)
                )
                .overlay( Text("1.2M") // current view count of each video
                    .foregroundColor(.black)
                    .font(.body)
                    .padding(.leading,220)
                    .padding(.top,120))
            
                .overlay(
                    VStack {
                        TitleButton()
                        
                    HStack {
                        ProfilePicButton()
                            .frame(width: 20, height: 20)
                    UsernameButton()
                        
                    }
                }
            )
        }
     
    }


struct PopularThumbnail_Previews: PreviewProvider {
    static var previews: some View {
        PopularThumbnail().preferredColorScheme(.dark)
    }
}
