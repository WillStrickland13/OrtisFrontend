//
//  EditingPageButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/17/22.
//

import SwiftUI

struct EditingPageButton: View {
    var body: some View {
        
            Image("EditingPageButton")
                .resizable()
                .frame(width:50,height:50, alignment: .bottomLeading)
                .colorInvert()
        
     
    }
}

struct EditingPageButton_Previews: PreviewProvider {
    static var previews: some View {
        EditingPageButton().preferredColorScheme(.dark)
    }
}
