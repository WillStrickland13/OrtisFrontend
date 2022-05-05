//
//  TrashButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/19/22.
//

import SwiftUI

struct TrashButton: View {
    var body: some View {
        Button(action: {
            print("Trash button test")
        }) {
            Image("TrashButton")
                .resizable()
                .frame(width:40,height:40, alignment: .bottomLeading)
                .colorInvert()
        }
     
    }
}

struct TrashButton_Previews: PreviewProvider {
    static var previews: some View {
        TrashButton().preferredColorScheme(.dark)
    }
}
