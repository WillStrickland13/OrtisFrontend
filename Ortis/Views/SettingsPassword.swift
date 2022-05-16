//
//  SettingsPassword.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/12/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON
struct SettingsPassword: View {
    @State var password: String = ""
    var body: some View {
        VStack {
            HStack {
                
                NavigationLink(destination:SettingsPageView()){BackButton()}

                    
                Text("Change Password".uppercased())
                            .fontWeight(.semibold)
                            .font(.body)
                            .kerning(5.0)
                            .foregroundColor(Color(.white))
                            .underline()
                            .padding(.all, 10)
                    
            }
            
            VStack {
                TextField("Old Password", text: $password)
            .padding()
            .background(Color(.gray))
            .foregroundColor(Color(.white))
            .cornerRadius(5.0)
            .padding(.bottom, 3)
            TextField("New Password", text: $password)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            TextField("Confirm Password", text: $password)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
       SaveButton()
               
    }
            .padding([.top,.bottom], 200)
       
    }
    }
}

struct SettingsPassword_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPassword().preferredColorScheme(.dark)
    }
}
