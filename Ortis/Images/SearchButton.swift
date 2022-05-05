//
//  SearchButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 3/28/22.
//

import SwiftUI

struct SearchButton: View {
    var body: some View {
            Image("searchIcon")
                .resizable()
                .frame(width:40,height:40)
                .colorInvert()
        
            
    }
}

struct SearchButton_Previews: PreviewProvider {
    static var previews: some View {
        SearchButton().preferredColorScheme(.dark)
    }
}
