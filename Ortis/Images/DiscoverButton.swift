//
//  DiscoverButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/21/22.
//

import SwiftUI

struct DiscoverButton: View {
    var body: some View {
        
            Image("DiscoverIcon")
                .resizable()
                .frame(width:40,height:40, alignment: .bottomLeading)
                .colorInvert()
        
    }
}

struct DiscoverButton_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverButton().preferredColorScheme(.dark)
    }
}
