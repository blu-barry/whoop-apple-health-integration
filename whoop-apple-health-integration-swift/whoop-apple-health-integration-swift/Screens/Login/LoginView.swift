//
//  LoginView.swift
//  whoop-apple-health-integration-swift
//
//  Created by Michael Barry on 1/2/22.
//

import SwiftUI

struct LoginView: View {
    
    @State var signIn: Bool = false
    
    @State private var username: String = ""
    @FocusState private var emailFieldIsFocused: Bool //= false

    @State private var password: String = ""
    @FocusState private var passwordFieldIsFocused: Bool //= false
    
    var body: some View {
        VStack {
            Text("Login to your Whoop Fitness Account")
            HStack {
                TextField(
                        "User name (email address)",
                        text: $username
                    )
                    //.focused($emailFieldIsFocused)
                    .onSubmit {
                        //validate(name: username)
                    }
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .border(.secondary)

                    //Text(username)
                    //    .foregroundColor(emailFieldIsFocused ? .red : .blue)
            }
            .padding()
            
            HStack {
                TextField(
                        "Password",
                        text: $password
                    )
                    //.focused($passwordFieldIsFocused)
                    .onSubmit {
                        //validate(password: password)
                    }
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .border(.secondary)

                    //Text(password)
                    //    .foregroundColor(passwordFieldIsFocused ? .red : .blue)
            }
            .padding()
            
            Button("Sign In") {
                // Modify Config File
                // Add username and password
                // get whoop userID
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
