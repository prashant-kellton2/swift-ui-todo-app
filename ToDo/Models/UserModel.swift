//
//  UserModel.swift
//  ToDo
//
//  Created by Prashant Maharana on 18/06/24.
//

import Foundation

struct UserModel : Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
