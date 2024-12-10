//
//  UserValidatorTest.swift
//  ManagerApp
//
//  Created by Maximar Yepez on 12/10/24.
//
import XCTest
@testable import ManagerApp

class UserValidatorTests: XCTestCase {

    func testIsAnyEmptyAllFieldsEmpty() {
        let user = User(firstName: "", lastName: "", email: "", password: "", age: 20)
        XCTAssertTrue(UserValidator.isAnyEmpty(user: user))
    }
    
    func testIsAnyEmptyOneFieldEmpty() {
        let user = User(firstName: "Maximar", lastName: "", email: "test@example.com", password: "12345678", age: 20)
        XCTAssertTrue(UserValidator.isAnyEmpty(user: user))
    }
    
    func testIsAnyEmptyAllFieldsFilled() {
        let user = User(firstName: "Maximar", lastName: "Yepez", email: "test@example.com", password: "12345678", age: 20)
        XCTAssertFalse(UserValidator.isAnyEmpty(user: user))
    }
    
    func testValidateUserInvalidEmail() {
        let user = User(firstName: "Maximar", lastName: "Yepez", email: "testexample.com", password: "12345678", age: 20)
        XCTAssertTrue(UserValidator.isInvalidValidEmail(user: user))
       
    }
    
    func testValidateUserValidEmail() {
        let user = User(firstName: "Maximar", lastName: "Yepez", email: "test@example.com", password: "12345678", age: 20)
        XCTAssertFalse(UserValidator.isInvalidValidEmail(user: user))
       
    }
    
    func testValidateShortPassword() {
        let user = User(firstName: "Maximar", lastName: "Yepez",  email: "test@example.com", password: "123", age: 20)
        
        XCTAssertTrue(UserValidator.isNotValidLongPassword(user: user))
    }
    
    func testValidateLongPassword() {
        let user = User(firstName: "Maximar", lastName: "Yepez",  email: "test@example.com", password: "12345678", age: 20)
        
        XCTAssertFalse(UserValidator.isNotValidLongPassword(user: user))
    }
    
    func testValidAge() {
        let user = User(firstName: "Juan", lastName: "Yepez",  email: "juan@example.com", password: "12345678", age: 22)
        
        XCTAssertFalse(UserValidator.isNotValidAge(user: user))
    }
    
    func testInvalidAge() {
        let user = User(firstName: "Maximar", lastName: "Yepez",  email: "test@example.com", password: "12345678", age: 17)
        
        XCTAssertTrue(UserValidator.isNotValidAge(user: user))
    }
}
