//
//  NextButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/27/22.
//

import SwiftUI

struct NextButton: View {
    var body: some View {
        ZStack {
            Text("Next")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(.white))
                .underline()
        }
        
    }
}

struct NextButton_Previews: PreviewProvider {
    static var previews: some View {
        NextButton().preferredColorScheme(.dark)
    }
}
