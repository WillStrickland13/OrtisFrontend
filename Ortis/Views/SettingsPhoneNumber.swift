//
//  SettingsPhoneNumber.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/12/22.
//

import SwiftUI
import Alamofire
import SwiftyJSON
struct SettingsPhoneNumber: View {
    @State var phonenumber: String = ""
    var body: some View {
        
        VStack {
            HStack {
                
                NavigationLink(destination:SettingsPageView()){BackButton()}

                    
                Text("Change Phone Number".uppercased())
                            .fontWeight(.semibold)
                            .font(.body)
                            .kerning(5.0)
                            .foregroundColor(Color(.white))
                            .underline()
                            .padding(.all, 10)
                    
            }
            
            VStack {
        TextField("Old Phone number", text: $phonenumber)
            .padding()
            .background(Color(.gray))
            .foregroundColor(Color(.white))
            .cornerRadius(5.0)
            .padding(.bottom, 3)
            TextField("New Phone Number", text: $phonenumber)
                .padding()
                .background(Color(.gray))
                .foregroundColor(Color(.white))
                .cornerRadius(5.0)
                .padding(.bottom, 3)
            TextField("Confirm Phone Number", text: $phonenumber)
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

struct SettingsPhoneNumber_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPhoneNumber().preferredColorScheme(.dark)
    }
}
