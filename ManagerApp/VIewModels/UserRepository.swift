//
//  UserRepository.swift
//  ManagerApp
//
//  Created by Maximar Yepez on 12/9/24.
//

class UserRepository {
    
    static func registerUser(user : User) {
        Database.saveUser(user: user)
  
    }
    
}
