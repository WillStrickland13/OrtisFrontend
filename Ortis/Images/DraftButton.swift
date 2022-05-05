//
//  SaveButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/6/22.
//

import SwiftUI

struct DraftButton: View {
    var body: some View {
        Button(action: {
            print("Draft button test")
        }) {
            Image("SaveButton")
                .resizable()
                .frame(width:40,height:40)
                .colorInvert()
        }
    }
}

struct DraftButton_Previews: PreviewProvider {
    static var previews: some View {
        DraftButton().preferredColorScheme(.dark)
    }
}
