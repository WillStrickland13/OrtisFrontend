//
//  BottomBar.swift
//  Ortis
//
//  Created by William Strickland on 12/30/21.
//

import SwiftUI

struct BottomBar: View {
    var body: some View {
        Image("BottomBar")
            .resizable()
            .frame(width: 450, height: 40)
    }
}

struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
    }
}
