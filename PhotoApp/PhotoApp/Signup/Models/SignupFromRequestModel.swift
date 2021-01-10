//
//  SignupFromRequestModel.swift
//  PhotoApp
//
//  Created by Justyna Kowalkowska on 10/01/2021.
//

import Foundation

struct SignupFromRequestModel: Encodable {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
}
