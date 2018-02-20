//
//  UsersTableViewController.swift
//  HelloMVVM
//
//  Created by Mohammad Azam on 11/30/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class UsersTableViewController : UITableViewController {
    
    private var usersListViewModel :UsersListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usersListViewModel = UsersListViewModel(dataAccess: DataAccess())
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let registrationViewController = segue.destination as? RegistrationTableViewController {
            let userViewModel = usersListViewModel.usersViewModel[tableView.indexPathForSelectedRow!.row]
            registrationViewController.selectedUser = userViewModel
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersListViewModel.usersViewModel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let userViewModel = self.usersListViewModel.usersViewModel[indexPath.row]
        cell.textLabel?.text = "\(userViewModel.email!.value!) \(userViewModel.password!.value!)"
        
        return cell
    }
 
    
}
