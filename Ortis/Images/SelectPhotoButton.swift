//
//  SelectPhotoButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/12/22.
//

import SwiftUI

struct SelectPhotoButton: View {
    var body: some View {
            Text("Select Photo".uppercased())
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

struct SelectPhotoButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectPhotoButton().preferredColorScheme(.dark)
    }
}
