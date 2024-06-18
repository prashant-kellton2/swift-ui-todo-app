//
//  LoginViewViewModel.swift
//  ToDo
//
//  Created by Prashant Maharana on 18/06/24.
//

import Foundation

class LoginViewViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    init(){
        
    }
}
