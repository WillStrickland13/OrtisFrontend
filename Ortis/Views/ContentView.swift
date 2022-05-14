//
//  ContentView.swift
//  Ortis
//
//  Created by William Strickland on 12/26/21.
//

import SwiftUI


struct ContentView: View {
    @State var users = [User]()
    
    //let vc=ViewController()
    var body: some View {
        
        NavigationView{
            //ProfileView()
            RegisterPage()
            
            //LoginView()
            //HomePageView()
            //MainMenuView()
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
