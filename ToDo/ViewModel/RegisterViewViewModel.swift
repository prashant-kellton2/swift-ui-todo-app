//
//  RegisterViewViewModel.swift
//  ToDo
//
//  Created by Prashant Maharana on 18/06/24.
//

import Foundation

class RegisterViewViewModel : ObservableObject {
    @Published var fullName = ""
    @Published var  email = ""
    @Published var password = ""
}
