//
//  SignupFormModelValidator.swift
//  PhotoApp
//
//  Created by Justyna Kowalkowska on 06/01/2021.
//

import Foundation

final class SignupFormModelValidator {
    
    func isForstNameValid(firstName: String) -> Bool {
        var returnValue = true
        if firstName.count < 2 {
            returnValue = false
        }
        return returnValue
    }
}
