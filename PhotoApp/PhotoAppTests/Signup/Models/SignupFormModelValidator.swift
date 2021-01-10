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
        let isFirstNameValid = sut.isFirstNameValid(firstName: "J")

        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have return FALSE for a first name that is shorter than \(SignupConstants.firstNameMinLength) characters but it has returned TRUE.")
    }
    
    func testSignupFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        let isFirstNameValid = sut.isFirstNameValid(firstName: "JustynaJustynaJustyna")

        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have return FALSE for a first name that is loger than \(SignupConstants.firstNameMaxLength) characters but it has returned TRUE.")
    }
    
    // MARK: - Last Name Validation Unit Tests
    
    func testSignFormModelValidator_WhenValidLastNameProvided_ShouldReturnTrue() {
        let isLastNameValid = sut.isLastNameValid(lastName: "Kowalkowska")
        
        XCTAssertTrue(isLastNameValid, "The isLastNameValid() should have returned TRUE for a valid last name but returned FALSE")
    }
    
    func testSignupFormModelValidator_WhenTooShortLastNameProvided_ShouldReturnFalse() {
        let isLastNameValid = sut.isLastNameValid(lastName: "K")
        
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
    
    // MARK: - Password Validation
    
    func testSignupFormModelValidator_WhenValidPasswordProvided_ShouldReturnTrue() {
        let isPasswordValid = sut.isPasswordValid(password: "123456789")
        
        XCTAssertTrue(isPasswordValid, "The isPasswordValid() should have returned TRUE for a valid password but it has returned FALSE")
    }
    
    func testSignupFormModelValidator_WhenTooLongPasswordProvided_ShouldReturnFalse() {
        let isPasswordValid = sut.isPasswordValid(password: "12")
        
        XCTAssertFalse(isPasswordValid, "The isPasswordValid() should have returned FALSE for a password that is shorter than \(SignupConstants.passwordMinLenght) characters but it has returned TRUE")
    }
    
    func testSignupFormModelValidator_WhenTooShortPasswordProvided_ShouldReturnFalse() {
        let isPasswordValid = sut.isPasswordValid(password: "123456789123456789")
        
        XCTAssertFalse(isPasswordValid, "The isPasswordValid() should have returned FALSE for a password that is longer than \(SignupConstants.passwordMaxLenght) characters but it has returned TRUE")
    }
    
    func testSingupFormModelValidator_WhenEqualPasswordsProvided_ShouldReturnTrue() {
        let doPasswordsMatch = sut.doPasswordsMatch(password: "123456789", repeatPassword:"123456789")

        XCTAssertTrue(doPasswordsMatch, "The doPasswordsMatch() should have returned TRUE for matching passwords but it has returned FALSE")
    }
    
    func testSingupFormValidator_WhenNotMatchingPasswordsProvided_ShouldReturnFales() {
        let doPasswordsMatch = sut.doPasswordsMatch(password: "123456789", repeatPassword: "23456789")
        
        XCTAssertFalse(doPasswordsMatch, "The doPasswordsMatch() should have returned FALSE for passwords that do not match but it has returned TRUE")
    }
}
