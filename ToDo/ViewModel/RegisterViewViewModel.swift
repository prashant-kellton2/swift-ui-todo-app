//
//  RegisterViewViewModel.swift
//  ToDo
//
//  Created by Prashant Maharana on 18/06/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewViewModel : ObservableObject {
    @Published var fullName = ""
    @Published var  email = ""
    @Published var password = ""
    
    init(){
        
    }
    func register(){
        guard validate() else {
            return
        }
        Auth.auth().createUser(withEmail: email, password: password){
            [weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            self?.insertUserRecord(id: userId)
        }
        
    }
    private func insertUserRecord(id:String){
        let user = UserModel(id: id, name: fullName, email: email, joined: Date().timeIntervalSince1970)
        let db = Firestore.firestore()
        db.collection("users").document(id).setData(user.asDictionary())
    }
    
    private func validate()->Bool {
        guard !fullName.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        guard email.contains("@") && email.contains(".")else {
            return false
        }
        guard password.count >= 6 else {
            return false
        }
        return true
                    
    }
}
