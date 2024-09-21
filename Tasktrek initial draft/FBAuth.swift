//
//  FBAuth.swift
//  Tasktrek initial draft
//
//  Created by Other on 14/9/24.

import Foundation

class Userinfo: ObservableObject {
    enum FBAuthState {
        case undefined, signedOut, signedIn
    }
    @Published var isUserAuthenticated: FBAuthState = .undefined
    
    func configureFirebaseStateDidChange(){
        self.isUserAuthenticated = .signedOut
//        self.isUserAuthenticated = .signedIn
    }
}
