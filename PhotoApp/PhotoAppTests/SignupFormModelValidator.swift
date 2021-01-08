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

    // MARK: - First Name Validation Unit Tests
    
    func testSignupFormModelValidator_WhenValidfirstNameProvided_ShouldReturnTrue() {

        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Justyna")
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid first name but returned FALSE.")
    }

    func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "J")
        //Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have return FALSE for a first name that is shorter than \(SignupConstants.firstNameMinLength) characters but it has returned TRUE.")
    }
    
    func testSignupFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "JustynaJustynaJustyna")
        //Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have return FALSE for a first name that is loger than \(SignupConstants.firstNameMaxLength) characters but it has returned TRUE.")
    }
    
    // MARK: - Last Name Validation Unit Tests
    
        func testSignFormModelValidator_WhenValidLastNameProvided_ShouldReturnTrue() {
            
            // Arrange
            // Act
            let isLastNameValid = sut.isLastNameValid(lastName: "Kowalkowska")
            
            // Assert
            XCTAssertTrue(isLastNameValid, "The isLastNameValid() should have returned TRUE for a valid last name but returned FALSE")
        }
        
        func testSignupFormModelValidator_WhenTooShortLastNameProvided_ShouldReturnFalse() {
            
            // Arrange
            // Act
            let isLastNameValid = sut.isLastNameValid(lastName: "K")
            
            // Assert
            XCTAssertFalse(isLastNameValid, "The isLastNameValid() should have returned FALSE for a last name that is shorter than \(SignupConstants.lastNameMinLength) characters but it has returned TRUE")
            
        }
        
        func testSignupFormModelValidator_WhenTooLongLastNameProvided_ShouldReturnFalse() {
            
            let isLastNameValid = sut.isLastNameValid(lastName: "KowalkowskaKowalkowska")
            
            XCTAssertFalse(isLastNameValid, "The isLastNameValid() should have returned FALSE for a last name that is longer than \(SignupConstants.lastNameMaxLength) characters but it has returned TRUE")
        }
    
    // MARK: - Email Address Validation
    
    func testSignupFormModelValidator_WhenValidEmailProvided_ShouldReturnTrue() {
        let isValidEmailFormat = sut.isValidEmailFormat(email: "test@test.com")
        
        XCTAssertTrue(isValidEmailFormat, "Provided valid email address format but validation did not pass")
    }
    
    func testSignupFormModelValidator_WhenInValidEmailProvided_ShouldReturnFalse() {
        let isValidEmailFormat = sut.isValidEmailFormat(email: "test@test")
        
        XCTAssertFalse(isValidEmailFormat, "Provided invalid email address format but validation still passed")
    }
}
