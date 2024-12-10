//
//  User.swift
//  ManagerApp
//
//  Created by Maximar Yepez on 12/9/24.
//

// User.swift

import Foundation

struct User {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
    let age: Int
    
    init(firstName: String, lastName: String, email: String, password: String, age : Int ) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.age = age
    }
}


