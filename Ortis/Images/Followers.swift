//
//  Followers.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/26/22.
//

import SwiftUI

struct Followers: View {
    var body: some View {
        VStack {
            Text("1,134") // counter for follower count
                .foregroundColor(.white)
                .font(.title3)
          
                Text("Followers".uppercased())
                .underline()
                .font(.body)
                .foregroundColor(.white)
        }
        }
    }


struct Followers_Previews: PreviewProvider {
    static var previews: some View {
        Followers().preferredColorScheme(.dark)
    }
}
