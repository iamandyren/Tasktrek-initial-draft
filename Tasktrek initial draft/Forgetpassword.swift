//
//  Signup Ui.swift
//  Tasktrek initial draft
//
//  Created by Other on 12/9/24.
//

import Foundation
import SwiftUI

struct ForgetpasswordView: View {
    @State var user: UserViewModel = UserViewModel()
    @Environment(\.presentationMode) var presentationMode
    @Binding var email : Bool
    
    @State private var showAlert = false
    @State private var errStrings: String?
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Enter email address", text: $user.email).automaticCapitalization(.none).keyboardType(.emailAddress)
                Button(action: {
                    FBAuth.resetPassword(email: self.user.email)
                    switch results{
                    case .failure(let error):
                        self.errStrings = error.localizedDescription
                    case .success():
                        break
                    }
                    self.showAlert = true
                }
                       }) {
                Text("Reset")
                    .frame(width:200)
                    .padding(.vertical, 15)
                    .background(color.green)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                    .opacity(user.isEmailvalid(_email: user.email) ? 1:0.75)
                    
            }
        }
        
    }
}
