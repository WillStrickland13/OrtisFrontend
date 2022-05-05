//
//  SaveButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/21/22.
//

import SwiftUI

struct SaveButton: View {
    var body: some View {
       
            Text("save".uppercased())
                .bold()
        
            .padding(20.0)
            .background(ZStack {
                Color(.gray)
                    .cornerRadius(15.0)
                    .frame(width: 150, height: 50)
            }
            )
            .foregroundColor(Color.white)
    }
}

struct SaveButton_Previews: PreviewProvider {
    static var previews: some View {
        SaveButton().preferredColorScheme(.dark)
    }
}
