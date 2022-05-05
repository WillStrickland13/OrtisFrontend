//
//  Following.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/26/22.
//

import SwiftUI

struct Following: View {
    var body: some View {
        VStack {
            Text("1,195") // counter for follower count
                .font(.title3)
                .foregroundColor(.white)
                Text("Following".uppercased())
                .underline()
                .font(.body)
                .foregroundColor(.white)
                
        }
        }
    }


struct Following_Previews: PreviewProvider {
    static var previews: some View {
        Following().preferredColorScheme(.dark)
    }
}
