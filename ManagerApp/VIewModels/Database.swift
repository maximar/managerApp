//
//  Foundation.swift
//  ManagerApp
//
//  Created by Maximar Yepez on 12/9/24.
//

// Database.swift

import Foundation

class Database {
    static var users: [User] = []

    static func saveUser(user: User) {
        users.append(user)
    }

    static func getUserByEmail(email: String) -> User? {
        return users.first { $0.email == email }
    }
    
}

