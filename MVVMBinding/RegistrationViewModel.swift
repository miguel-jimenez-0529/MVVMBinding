//
//  RegistrationViewModel.swift
//  MVVMBinding
//
//  Created by Miguel Jimenez on 19/02/18.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation



class RegistrationViewModel : ViewModel{
    
    
    var brokenRules: [BrokenRule] = []
    
    var email : Dynamic<String>!
    var password : Dynamic<String>!
    var firstName : Dynamic<String>!
    var lastName : Dynamic<String>!
    
    var isValid: Bool {
        get {
            self.brokenRules = []
            self.validate()
            return brokenRules.count == 0
        }
    }
    
    init(userVM : UserViewModel) {
        self.email = userVM.email
        self.password = userVM.password
    }
}

extension RegistrationViewModel {
    
    private func validate() {
        if email.value!.isEmpty {
            self.brokenRules.append(BrokenRule(propertyName: "email", message: "Email is required"))
        }
        
        if password.value!.isEmpty {
            self.brokenRules.append(BrokenRule(propertyName: "password", message: "password is requered"))
        }
    }
}

