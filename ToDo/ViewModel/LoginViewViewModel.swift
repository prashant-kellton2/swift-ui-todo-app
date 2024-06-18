//
//  LoginViewViewModel.swift
//  ToDo
//
//  Created by Prashant Maharana on 18/06/24.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    init(){
        
    }
    func login(){
        guard validate() else {
            return
        }
        Auth.auth().signIn(withEmail: email, password: password)
    }
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Email or password empty found."
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Enter valid email address."
            return false
        }
        return true
    }
}
