//
//  UserValidator.swift
//  ManagerApp
//
//  Created by Maximar Yepez on 12/9/24.
//
import Foundation

class UserValidator {
    
    static func isAnyEmpty(user: User) -> Bool{
        return user.firstName.isEmpty || user.lastName.isEmpty || user.email.isEmpty || user.password.isEmpty
    }
    
    static fileprivate func validFields(user: User) {
        validate(cond: isAnyEmpty(user:), messa: "All fields must be filled", user: user)
       
    }
    
    static func isInvalidValidEmail(user: User) -> Bool {
        return !user.email.contains("@")
    }
    
    static func validEmail(user: User) {
        
        validate(cond: isInvalidValidEmail(user:), messa: "Invalid email address", user: user)
        
    }
    
    static func isNotValidLongPassword(user: User) -> Bool {
        return user.password.count < 6
    }
    
    static fileprivate func validPassword(user: User) {
        
        validate(cond: isNotValidLongPassword(user:), messa: "Password must be at least 6 characters", user: user)
        
    }
    
    static func isNotValidAge(user: User) -> Bool {
        return user.age < 18
    }
    
    static fileprivate func validAge(user: User) {
       
        validate(cond: isNotValidAge(user:), messa: "User must be at least 18 years old", user: user)
        
    }
    
    static func validate(cond: (User) -> Bool, messa: String, user: User){
        if !cond(user)
            { fatalError(messa) }
    }
    
    
    static func validateUser(user: User) {
        
        validFields(user: user)
        validEmail(user: user)
        validPassword(user: user)
        validAge(user: user)
        
    }
    
}
