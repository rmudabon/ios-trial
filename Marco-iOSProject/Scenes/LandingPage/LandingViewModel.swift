//
//  LandingViewModel.swift
//  Marco-iOSProject
//
//  Created by Marco on 1/13/23.
//

import Foundation

struct LoginParams {
    var username: String
    var password: String
}

protocol LandingDelegate: AnyObject {
    func onError(message: String)
    func onSuccess()
}

final class LandingViewModel: NSObject {
    
    weak var delegate: LandingDelegate?
    
    func submitForm(_ params: LoginParams){
        if !isFormValid(params){
            //TODO: Action on error/invalid form
            delegate?.onError(message: "Invalid credentials")
            return
        }
        
        //TODO: Action on valid form
        delegate?.onSuccess()
    }
    
}

extension LandingViewModel {
    
    func isFormValid(_ params: LoginParams) -> Bool {
        return (Validators.isPasswordValid(password: params.password))
    }
    
}
