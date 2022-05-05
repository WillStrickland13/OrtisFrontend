//
//  MusicButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/15/22.
//

import SwiftUI

struct MusicButton: View {
    var body: some View {
        Button(action: {
            print("Music button test")
        }) {
            Image("MusicIcon")
                .resizable()
                .frame(width:40,height:40, alignment: .bottomLeading)
                .colorInvert()
        }
     
    }
}

struct MusicButton_Previews: PreviewProvider {
    static var previews: some View {
        MusicButton().preferredColorScheme(.dark)
    }
}
