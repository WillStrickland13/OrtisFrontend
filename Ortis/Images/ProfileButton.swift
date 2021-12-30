//
//  ProfileButton.swift
//  Ortis
//
//  Created by William Strickland on 12/30/21.
//

import SwiftUI

struct ProfileButton: View {
    var body: some View {
        Image("ProfileButton")
            .resizable()
            .frame(width:40,height:40)
    }
}

struct ProfileButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileButton()
    }
}
