//
//  AddButton.swift
//  Ortis
//
//  Created by William Strickland on 12/30/21.
//

import SwiftUI


struct AddButton: View {
    var body: some View {
       
            Image("addButton")
                .resizable()
                .frame(width:40,height:40, alignment: .bottomLeading)
                .colorInvert()
        
     
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton().preferredColorScheme(.dark)
    }
}
