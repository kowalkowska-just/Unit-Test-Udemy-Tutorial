//
//  SignupError.swift
//  PhotoApp
//
//  Created by Justyna Kowalkowska on 10/01/2021.
//

import Foundation

enum SignupError: LocalizedError, Equatable {

    case invalidResponseModel
    case invalidRequestURLString
    case failedRequest(description: String)

    var errorDescription: String? {
        switch self {
        case .failedRequest(let description):
            return description
        case .invalidResponseModel, .invalidRequestURLString:
            return ""
        }
    }

}
