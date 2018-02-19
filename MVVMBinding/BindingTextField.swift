//
//  BindingTextField.swift
//  MVVMBinding
//
//  Created by Miguel Jimenez on 19/02/18.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import UIKit

class BindingTextField : UITextField {
    
    var textChanged : (String) -> () = {_ in}
    
    func bind(callback: @escaping (String) -> ())  {
        self.textChanged = callback
        self.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControlEvents.editingChanged)
    }
    
    @objc func textFieldDidChange (_ textField : UITextField) {
        self.textChanged(textField.text!)
    }
}
