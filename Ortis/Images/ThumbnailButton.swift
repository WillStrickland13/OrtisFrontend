//
//  ThumbnailButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/21/22.
//

import SwiftUI

struct ThumbnailButton: View {
    var body: some View {
       
        //   Rectangle()
          //      .frame(width: 150, height: 75)
                
            //    .foregroundColor(.white)
              //  .overlay( Text("1.5k") // current view count of each video
                //    .foregroundColor(.black)
                  //  .font(.footnote)
                   // .padding(.leading,100)
                  //  .padding(.top,50))
           // .frame(width: 150, height: 75)
        
        
       // Rectangle()
        Image("Image")
            .resizable()
             .frame(width: 300, height: 150)
             .foregroundColor(.white)
             
             .overlay(
     Rectangle()
                     .foregroundColor(.black)
                     .opacity(0.5)
             )
             .overlay( Text("1.5k") // current view count of each video
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

struct ThumbnailButton_Previews: PreviewProvider {
    static var previews: some View {
        ThumbnailButton().preferredColorScheme(.dark)
    }
}
