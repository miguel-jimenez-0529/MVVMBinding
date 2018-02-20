//
//  UserViewModel.swift
//  MVVMBinding
//
//  Created by Miguel Jimenez on 19/02/18.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation

class UserViewModel {
    
    var email : Dynamic<String>!
    var password : Dynamic<String>!
    
    init(user : User) {
        self.email = Dynamic<String>(user.email)
        self.password = Dynamic<String>(user.password)
    }
}
