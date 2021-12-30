//
//  PostButton.swift
//  Ortis
//
//  Created by William Strickland on 12/30/21.
//

import SwiftUI

struct PostButton: View {
    var body: some View {
        Image("PostButton")
            .resizable()
            .frame(width:40,height:40,alignment: .bottomLeading)
            
    }
}

struct PostButton_Previews: PreviewProvider {
    static var previews: some View {
        PostButton()
    }
}
