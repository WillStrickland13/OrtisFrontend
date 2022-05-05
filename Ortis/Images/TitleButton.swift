//
//  TitleButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/21/22.
//

import SwiftUI

struct TitleButton: View {
    var body: some View {
      
        Text("THIS IS THE TITLE OF THE VIDEO")
                .foregroundColor(.white)
                
        }
    
}

struct TitleButton_Previews: PreviewProvider {
    static var previews: some View {
        TitleButton().preferredColorScheme(.dark)
    }
}
