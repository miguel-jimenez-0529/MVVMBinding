//
//  UsersListViewModel.swift
//  HelloMVVM
//
//  Created by Mohammad Azam on 11/30/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation

class UsersListViewModel {
    
    var usersViewModel : [UserViewModel] = []
    
    private var dataAccess : DataAccess
    
    init(dataAccess : DataAccess) {
        self.dataAccess = dataAccess
        populateUsers()
    }
    
    private func populateUsers() {
        self.usersViewModel = self.dataAccess.getAllUsers().map {UserViewModel(user: $0)}
    }
}







