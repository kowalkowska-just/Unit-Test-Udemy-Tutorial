//
//  SignupFormModelValidator.swift
//  PhotoAppTests
//
//  Created by Justyna Kowalkowska on 06/01/2021.
//

import XCTest
@testable import PhotoApp

class SignupFormModelValidatorTests: XCTestCase {

    var sut: SignupFormModelValidator!
    
    override func setUpWithError() throws {
        sut = SignupFormModelValidator()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testSignupFormModelValidator_WhenValidfirstNameProvided_ShouldReturnTrue() {

        // Act
        let isFirstNameValid = sut.isForstNameValid(firstName: "Justyna")
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid first name but returned FALSE.")
    }

    func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        // Act
        let isFirstNameValid = sut.isForstNameValid(firstName: "J")
        //Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have return FALSE for a first name that is shorter than \(SignupConstans.firstNameMinLength) characters but it has returned TRUE.")
    }
    
    func testSignupFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        //Act
        let isFirstNameValid = sut.isForstNameValid(firstName: "JustynaJustynaJustyna")
        //Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have return FALSE for a first name that is loger than \(SignupConstans.firstNameMaxLength) characters but it has returned TRUE.")
    }
}
