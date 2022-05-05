//
//  Settingsbutton.swift
//  Ortis
//
//  Created by Blaise Wittern on 3/29/22.
//

import SwiftUI


struct Settingsbutton: View {
    var body: some View {
        
            Image("settingsIcon")
                .resizable()
                .frame(width:40,height:40)
                .colorInvert()
        
    }
}


struct Settingsbutton_Previews: PreviewProvider {
    static var previews: some View {
        Settingsbutton().preferredColorScheme(.dark)
    }
}

