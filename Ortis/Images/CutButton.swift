//
//  CutButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/6/22.
//

import SwiftUI

struct CutButton: View {
    var body: some View {
        Button(action: {
            print("Cut button test")
        }) {
            Image("CutButton")
                .resizable()
                .frame(width:40,height:40, alignment: .bottomLeading)
                .colorInvert()
        }
     
    }
}

struct CutButton_Previews: PreviewProvider {
    static var previews: some View {
        CutButton().preferredColorScheme(.dark)
    }
}
