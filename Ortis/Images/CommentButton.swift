//
//  CommentButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/5/22.
//

import SwiftUI

struct CommentButton: View {
    var body: some View {
        Button(action: {
            print("Comment button test")
        }) {
            Image("CommentButton")
                .resizable()
                .frame(width:40,height:40, alignment: .bottomLeading)
                .colorInvert()
        }
     
    }
}

struct CommentButton_Previews: PreviewProvider {
    static var previews: some View {
        CommentButton().preferredColorScheme(.dark)
    }
}
