//
//  UsersView.swift
//  Ortis
//
//  Created by William Strickland on 12/30/21.
//

import SwiftUI

struct HomePageView: View {
    @State var users = [User]()
    var body: some View {
        List(users) { user in
            Text("\(user.firstName)   \(user.lastName)")
        }
                .onAppear() {
                    Api().loadData { (users) in
                        self.users = users
                    }
                }.navigationTitle("User List")
    }
}


struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
