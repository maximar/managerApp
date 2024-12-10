//
//  DatabaseTests.swift
//  ManagerApp
//
//  Created by Maximar Yepez on 12/10/24.
//

import XCTest
@testable import ManagerApp

final class DatabaseTests: XCTestCase {
    
    var viewModel : Database!
    var user : User!
    
    override func setUp() {
           super.setUp()
            Database.users.removeAll()
            viewModel = Database()
       }
    
       override func tearDown() {
           super.tearDown()
       }
    
    func testSavetUserSuccesfull() {
        let user = User(firstName: "namePrueba", lastName: "lastNamePrueba", email: "test@example.com", password: "123456789", age: 20)
       
        Database.saveUser(user: user)

        XCTAssertEqual(Database.users.count, 1)
        XCTAssertEqual(Database.users.first?.email, "test@example.com")
              
    }
    
    func testGetUserByEmail_ExistingEmail() {
        let user = User(firstName: "namePrueba", lastName: "lastNamePrueba", email: "test@example.com", password: "123456789", age: 20)
        Database.saveUser(user: user)
        
        let fetchedUser = Database.getUserByEmail(email: "test@example.com")
        
        XCTAssertNotNil(fetchedUser)
        //XCTAssertEqual(fetchedUser?.email, "test@example.com")
    }
    
    func testGetUserByEmail_NonExistingEmail() {
        let user = User(firstName: "namePrueba", lastName: "lastNamePrueba", email: "test@example.com", password: "123456789", age: 20)
        Database.saveUser(user: user)

        let fetchedUser = Database.getUserByEmail(email: "nonexistent@example.com")
        
        XCTAssertNil(fetchedUser)
    }
    
}
