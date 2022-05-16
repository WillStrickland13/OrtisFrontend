//
//  Followers.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/26/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON

struct Followers: View {
    @State var followers=0;
    var body: some View {
        VStack {
            Text(String(followers)) // counter for follower count
                .foregroundColor(.white)
                .font(.title3)
          
                Text("Followers".uppercased())
                .underline()
                .font(.body)
                .foregroundColor(.white)
        }.onAppear(){
            print("getting followers")
            userServices.getFollowers(){result in
            followers=result
            }
        }
        }
    }


struct Followers_Previews: PreviewProvider {
    static var previews: some View {
        Followers().preferredColorScheme(.dark)
    }
}
