//
//  Following.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/26/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON
struct Following: View {
    @State var following=0;
    var body: some View {
        VStack {
            Text(String(following)) // counter for follower count
                .font(.title3)
                .foregroundColor(.white)
                Text("Following".uppercased())
                .underline()
                .font(.body)
                .foregroundColor(.white)
                
        }.onAppear(){
            print("getting followers")
            userServices.getFollowing(){result in
            following=result
            }
        }
        }
    }


struct Following_Previews: PreviewProvider {
    static var previews: some View {
        Following().preferredColorScheme(.dark)
    }
}
