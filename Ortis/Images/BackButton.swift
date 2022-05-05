//
//  BackButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/5/22.
//

import SwiftUI

struct BackButton: View {
    var body: some View {
        
            Image("BackButton")
                .resizable()
                .frame(width:20,height:20, alignment: .bottomLeading)
                .colorInvert()
        
     
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton().preferredColorScheme(.dark)
    }
}
