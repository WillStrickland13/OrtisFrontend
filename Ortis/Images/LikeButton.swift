//
//  LikeButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/5/22.
//

import SwiftUI

struct LikeButton: View {
    var body: some View {
        Button(action: {
            print("Like button test")
        }) {
            Image("LikeButton")
                .resizable()
                .frame(width:50,height:30, alignment: .bottomLeading)
                .colorInvert()
        }
     
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton().preferredColorScheme(.dark)
    }
}
