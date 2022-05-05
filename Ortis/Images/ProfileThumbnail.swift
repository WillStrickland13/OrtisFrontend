//
//  ProfileThumbnail.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/25/22.
//

import SwiftUI

struct ProfileThumbnail: View {
    var body: some View {
      
         //  Rectangle()
        Image("Image")
            .resizable()
                .frame(width: 200, height: 90)
                
                .foregroundColor(.white)
                .overlay( Text("1.5k") // current view count of each video
                    .foregroundColor(.black)
                    .font(.footnote)
                    .padding(.leading,150)
                    .padding(.top,60))
            .frame(width: 200, height: 75) // should be link to video
               
               
           
    }
}

struct ProfileThumbnail_Previews: PreviewProvider {
    static var previews: some View {
        ProfileThumbnail().preferredColorScheme(.dark)
    }
}
