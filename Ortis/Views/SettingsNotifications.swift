//
//  SettingsNotifications.swift
//  Ortis
//
//  Created by Blaise Wittern on 4/12/22.
//

import SwiftUI

struct SettingsNotifications: View {
    @State private var notifications = true
    var body: some View {
        VStack{
            
            HStack {
                
                NavigationLink(destination:SettingsPageView()){BackButton()}.padding(.leading, -50)
                    

                    
                Text("Notifications".uppercased())
                            .fontWeight(.semibold)
                            .font(.body)
                            .kerning(5.0)
                            .foregroundColor(Color(.white))
                            .underline()
                            .padding(.all, 10)
                    
            }
            .padding(.top, -320)
            
            
            VStack {
                       Toggle("Push Notifications", isOn: $notifications)

                       if notifications {
                           Text("Toggle between Push Notifications")
                       }
                    
        }
            
    }
}

struct SettingsNotifications_Previews: PreviewProvider {
    static var previews: some View {
        SettingsNotifications().preferredColorScheme(.dark)
    }
}
}
