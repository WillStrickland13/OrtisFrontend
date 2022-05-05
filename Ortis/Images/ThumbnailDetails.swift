//
//  ThumbnailDetails.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/25/22.
//

import SwiftUI

struct ThumbnailDetails: View {
    var body: some View {
        VStack {
            TitleButton()
            .frame(width: 150, height: 75)
            .padding(.leading,20)
            
            HStack {
                NavigationLink(destination:ProfileView()){ProfilePicButton()}//Profile pic of the videos user
                    .frame(width: 20, height: 20)
                NavigationLink(destination:ProfileView()){UsernameButton()}// goes to profile
            }
            .padding(.top,-20)
        }
    //user added content here!!
        //This is a to show what it looks like
    }
}

struct ThumbnailDetails_Previews: PreviewProvider {
    static var previews: some View {
        ThumbnailDetails().preferredColorScheme(.dark)
    }
}
