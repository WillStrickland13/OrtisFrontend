//
//  MainMenuView.swift
//  Ortis
//
//  Created by William Strickland on 12/30/21.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    BottomBar()
                        .padding(.bottom, -4.0)
                }.frame(minHeight:0,maxHeight: .infinity,alignment: .bottom)
                HStack{
                    
                    NavigationLink(destination:HomePageView()){PostButton().padding([.top, .trailing], 20.0)}
                    NavigationLink(destination:HomePageView()){HomeButton().padding([.top, .leading, .trailing], 20.0)}
                    NavigationLink(destination:HomePageView()){ProfileButton().padding([.top, .leading], 20.0)}
                    
                    
                    
                    
                }
            }
        }
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
