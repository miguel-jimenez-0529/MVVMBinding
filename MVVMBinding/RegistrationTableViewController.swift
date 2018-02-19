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
            emailTextField.bind { self.registrationViewModel.email = $0 }
        }
    }
    @IBOutlet weak var passwordTextField :BindingTextField! {
        didSet {
            passwordTextField.bind { self.registrationViewModel.password = $0 }
        }
    }
    
    private var registrationViewModel : RegistrationViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registrationViewModel = RegistrationViewModel()
    }
    
    @IBAction func save() {
        print(registrationViewModel)
    }
    
}
