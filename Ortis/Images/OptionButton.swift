//
//  OptionButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/5/22.
//

import SwiftUI

struct OptionButton: View {
    var body: some View {
        Button(action: {
            print("Options button test")
        }) {
            Image("OptionButton")
                .resizable()
                .frame(width:40,height:40, alignment: .bottomLeading)
                .colorInvert()
        }
     
    }
}

struct OptionButton_Previews: PreviewProvider {
    static var previews: some View {
        OptionButton().preferredColorScheme(.dark)
    }
}
