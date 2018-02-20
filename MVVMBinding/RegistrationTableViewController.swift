//
//  RegistrationTableViewController.swift
//  MVVMBinding
//
//  Created by Mohammad Azam on 12/4/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class RegistrationTableViewController : UITableViewController {
    
    @IBOutlet weak var emailTextField :BindingTextField! {
        didSet {
            emailTextField.bind { self.registrationViewModel.email = Dynamic<String>($0)}
        }
    }
    @IBOutlet weak var passwordTextField :BindingTextField! {
        didSet {
            passwordTextField.bind { self.registrationViewModel.password = Dynamic<String>($0) }
        }
    }
    
    private var registrationViewModel : RegistrationViewModel!
    var selectedUser : UserViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registrationViewModel = RegistrationViewModel.init(userVM: selectedUser)
        self.registrationViewModel.email.bind {self.emailTextField.text = $0 }
        self.registrationViewModel.password.bind { self.passwordTextField.text = $0 }
    }
    
    @IBAction func save() {
        if registrationViewModel.isValid {
            //Save
        }
        else {
            print(registrationViewModel.brokenRules)
        }
    }
}
