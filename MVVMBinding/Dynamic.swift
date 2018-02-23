//
//  Dynamic.swift
//  MVVMBinding
//
//  Created by Espiral on 2/23/18.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation


class Dynamic<T> {
    
    typealias Listener = (T) -> Void
    
    var listener : Listener?
    
    func bind(listener : Listener?) {
        self.listener = listener
        listener?(value!)
    }
    
    var value : T? {
        didSet {
            listener?(value!)
        }
    }
    
    init(_ v: T) {
        value = v
    }
}

struct BrokenRule {
    var propertyName : String
    var message : String
}

protocol ViewModel {
    var brokenRules :[BrokenRule] {get set}
    var isValid : Bool {mutating get}
}
