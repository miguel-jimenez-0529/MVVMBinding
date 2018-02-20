//
//  User.swift
//  HelloMVVM
//
//  Created by Mohammad Azam on 11/26/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation


class User {
    
    var firstName :String!
    var lastName :String! 
    var email :String!
    var password :String!
    
    init(firstName :String, lastName :String, email :String, password :String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password 
    }
    
    init(vm :RegistrationViewModel) {
        self.firstName = vm.firstName.value
        self.lastName = vm.lastName.value
        self.email = vm.email.value
        self.password = vm.password.value
    }
}
