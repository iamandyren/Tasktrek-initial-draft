//
//  Tasktrek_initial_draftApp.swift
//  Tasktrek initial draft
//
//  Created by Other on 30/8/24.
//

import SwiftUI
import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
// ...
      

struct ContentView: View {
    @EnvironmentObject var userInfo: UserInfo
    var body: some View{
        Group{
            if userInfo.isUserAuthenticated == .undefined {
                Text("loading...")
            } else if userInfo.isUserAuthenticated == .signedOut {
                Text("Login view")
            } else{
                Text("Home View")
            }
        }
        .onAppear{
            self.userInfo.configureFirebaseStateDidChange()
        }
    }
}
struct contentView_Previews: PreviewProvider{
    static var previews: some View {
        ContentView()
    }
}
