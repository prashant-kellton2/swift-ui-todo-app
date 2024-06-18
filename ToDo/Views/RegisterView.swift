//
//  RegisterView.swift
//  ToDo
//
//  Created by Prashant Maharana on 18/06/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack(content: {
            HeaderView(title: "Register", subTitle: "Start organizing today", angle: -15, backgroundColor: .orange).offset(y:-45)
            Form(content: {
                TextField("Full Name", text: $viewModel.fullName)
                    .autocorrectionDisabled(true).textInputAutocapitalization(.none)
                TextField("Email Address", text: $viewModel.email)
                    .autocorrectionDisabled(true).textInputAutocapitalization(.none)
                SecureField("Password", text: $viewModel.password)
                    .autocorrectionDisabled(true).textInputAutocapitalization(.none)
                TLButton(label: "Create Account", backgroundColor: .green){
                    viewModel.register()
                }
            })
            Spacer()
        })
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
