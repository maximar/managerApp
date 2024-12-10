//
//  UserAuthenticater.swift
//  ManagerApp
//
//  Created by Maximar Yepez on 12/9/24.
//

class UserAuthenticator{
    
    static func authenticateUser(email: String, password: String) -> Bool {
        let user = Database.getUserByEmail(email: email)
        if user == nil {
            fatalError("User not found")
        }
        return user?.password == password
    }
    
    
}

