//
//  DataAccess.swift
//  HelloMVVM
//
//  Created by Mohammad Azam on 11/29/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation

class DataAccess {
    
    func getAllUsers() -> [User] {
        
        var users = [User]()
        users.append(User(firstName: "Mohammad", lastName: "Azam", email: "azamsharp@gmail.com", password: "password"))
        users.append(User(firstName: "John", lastName: "Doe", email: "johndoe@gmail.com", password: "password"))
        users.append(User(firstName: "Mary", lastName: "Kate", email: "marykate@gmail.com", password: "password"))
        users.append(User(firstName: "Alex", lastName: "Lowe", email: "alexlowe@gmail.com", password: "password"))

        return users
        
    }
    
}
