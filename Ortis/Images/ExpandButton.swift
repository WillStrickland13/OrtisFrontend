//
//  ExpandButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/25/22.
//

import SwiftUI

struct ExpandButton: View {
    var body: some View {
        
            Image("ExpandButton")
                .resizable()
                .frame(width:20,height:20, alignment: .bottomLeading)
                //.colorInvert()
        }
    }


struct ExpandButton_Previews: PreviewProvider {
    static var previews: some View {
        ExpandButton().preferredColorScheme(.dark)
    }
}
