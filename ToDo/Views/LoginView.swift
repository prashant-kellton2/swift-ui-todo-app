//
//  LoginView.swift
//  ToDo
//
//  Created by Prashant Maharana on 18/06/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView(content: {
            VStack(content: {
                HeaderView(title: "ToDo List", subTitle: "Get things done", angle: 15, backgroundColor: .pink).offset(y:-40)
                Form(content: {
                    TextField("Email Address", text: $viewModel.email).textFieldStyle(DefaultTextFieldStyle()).textInputAutocapitalization(.none)
                    SecureField("Password", text: $viewModel.password).textFieldStyle(DefaultTextFieldStyle()).textInputAutocapitalization(.none)
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage).foregroundColor(.red)
                    }
                    TLButton(label: "Login", backgroundColor: .blue){
                        viewModel.login()
                    }
                    
                })
                VStack(content: {
                    Text("New around here?")
                    
                    NavigationLink( "Create An Account",destination: RegisterView())
                }).padding(.bottom,50)
                Spacer()
            })
        })
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
