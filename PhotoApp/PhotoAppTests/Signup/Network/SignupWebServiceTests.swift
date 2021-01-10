//
//  SignupWebServiceTestes.swift
//  PhotoAppTests
//
//  Created by Justyna Kowalkowska on 10/01/2021.
//

import XCTest
@testable import PhotoApp

class SignupWebServiceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSignupWebService_WhenGivenSuccessfullResponse_ReturnSuccess() {
        //Arrange
        let sut = SignupWebService()
        
        let signFormRequestModel = SignupFromRequestModel(firstName: "Justyna", lastName: "Kowalkowska", email: "test@test.com", password: "123456789")
        
        sut.signup(withForm: signFormRequestModel) { (signupResponseModel, error) in
            
        }
            
        }
    }

}
