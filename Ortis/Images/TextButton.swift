//
//  TextButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/6/22.
//

import SwiftUI

struct TextButton: View {
    var body: some View {
        Button(action: {
            print("Text button test")
        }) {
            Image("TextButton")
                .resizable()
                .frame(width:40,height:40, alignment: .bottomLeading)
                .colorInvert()
        }
     
    }
}

struct TextButton_Previews: PreviewProvider {
    static var previews: some View {
        TextButton().preferredColorScheme(.dark)
    }
}
