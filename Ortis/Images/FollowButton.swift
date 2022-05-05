//
//  FollowButton.swift
//  Ortis
//
//  Created by Blaise Wittern on 3/28/22.
//

import SwiftUI

struct FollowButton: View {
    var body: some View {
        Button(action: {
            print("Hello, SwiftUI!")
           
        }) {
            Text("follow".uppercased())
                .bold()
                .fontWeight(.medium)
                .font(.body)
                .kerning(5.0)
                .frame(width: 100, height: 35, alignment: .center)
        }
            .padding(20.0)
            .background(ZStack {
                Color(.black)
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.2), Color.clear]), startPoint: .top, endPoint: .bottom)
                    .cornerRadius(21.0)
                    .frame(width: 150, height: 50)
                    
            }
            )
            .foregroundColor(Color.white)
            .cornerRadius(21.0)
            .frame(width: 150, height: 50)
            .overlay(RoundedRectangle(cornerRadius: 15)
                .strokeBorder(Color.white ,lineWidth: 2.0)
                .frame(width: 150, height: 50, alignment: .center)
            )
            ///.frame(width: 150, height: 50)
    }
}



struct FollowButton_Previews: PreviewProvider {
    static var previews: some View {
        FollowButton().preferredColorScheme(.dark)
    }
}
