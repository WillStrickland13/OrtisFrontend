//
//  FilterButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/6/22.
//

import SwiftUI

struct FilterButton: View {
    var body: some View {
        Button(action: {
            print("Filter button test")
        }) {
            Image("FilterButton")
                .resizable()
                .frame(width:50,height:50, alignment: .bottomLeading)
                .brightness(0.4)
        }
     
    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton().preferredColorScheme(.dark)
    }
}
