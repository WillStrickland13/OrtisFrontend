//
//  HomeButton.swift
//  Ortis
//
//  Created by William Strickland on 12/30/21.
//

import SwiftUI

struct HomeButton: View {
    var body: some View {
        Image("HomeButton")
            .resizable()
            .frame(width:40,height:40)
            .colorInvert()

//made everything else buttons but this cause it seems like it does something already when I click it in build
    }
}

struct HomeButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton().preferredColorScheme(.dark)
    }
}
