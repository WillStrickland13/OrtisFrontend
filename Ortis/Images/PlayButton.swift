//
//  PlayButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/20/22.
//

import SwiftUI

struct PlayButton: View {
    var body: some View {
        Button(action: {
            print("Play button test")
        }) {
            Image("PlayIcon")
                .resizable()
                .frame(width:80,height:80, alignment: .bottomLeading)
                //.colorInvert()
        }
     
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton().preferredColorScheme(.dark)
    }
}
