//
//  Foundation.swift
//  ManagerApp
//
//  Created by Maximar Yepez on 12/9/24.
//

// Database.swift
// Only handles the storage logic of the User object

import Foundation

class Database {
    static var users: [User] = []

    // Allows you to save a user
    static func saveUser(user: User) {
        users.append(user)
    }

    //Allows you to search for a user
    static func getUserByEmail(email: String) -> User? {
        return users.first { $0.email == email }
    }
    
}

