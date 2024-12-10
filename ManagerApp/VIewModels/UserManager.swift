//
//  UserManager.swift
//  ManagerApp
//
//  Created by Maximar Yepez on 12/9/24.
//


// UserManager.swift

import Foundation

class UserManager {
    
    func enrollmentUser(user: User) {
        
        // Validate fields
        UserValidator.validateUser(user: user)
        // Save user to database
        UserRepository.registerUser(user: user)
        // Send welcome email
        EmailService.sendWelcomeEmail(email: user.email)
    }

    
    func loginUser(user: User) {
        if UserAuthenticator.authenticateUser(email: user.email, password: user.password)
        {
            print("User authenticated")
        }
        
    }
    
}


