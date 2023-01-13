//
//  Validators.swift
//  Marco-iOSProject
//
//  Created by Marco on 1/13/23.
//

import Foundation

struct Validators {
    
    static func isPasswordValid(password: String) -> Bool {
        return password.count > 6
    }
    
}
