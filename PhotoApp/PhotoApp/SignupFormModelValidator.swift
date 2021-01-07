//
//  SignupFormModelValidator.swift
//  PhotoApp
//
//  Created by Justyna Kowalkowska on 06/01/2021.
//

import Foundation

final class SignupFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true
        if firstName.count < SignupConstants.firstNameMinLength || firstName.count > SignupConstants.firstNameMaxLength {
            returnValue = false
        }
        return returnValue
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        var returnValue = true
        
        if lastName.count < SignupConstants.lastNameMinLength || lastName.count > SignupConstants.lastNameMaxLength {
            returnValue = false
        }
        
        return returnValue
    }
}
