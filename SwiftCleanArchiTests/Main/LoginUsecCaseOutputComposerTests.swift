//
//  LoginUsecCaseOutputComposerTests.swift
//  SwiftCleanArchiTests
//
//  Created by paige shin on 2022/06/23.
//

import XCTest
@testable import SwiftCleanArchi

class LoginUseCaseOutputComposerTests: XCTestCase {
    
    func test_composingZeroOutputs_doesNotCrash() {
        let sut = LoginUseCaseOutputComposer([])
        sut.loginSucceeded()
        sut.loginFailed()
    }
    
    func test_composingOneOutput_delegatesSucceededMessage() {
        let output1: LoginUseCaseOutputSpy = LoginUseCaseOutputSpy()
        let sut: LoginUseCaseOutputComposer = LoginUseCaseOutputComposer([output1])
        sut.loginSucceeded()
        XCTAssertEqual(output1.loginSucceededCallCount, 1)
        XCTAssertEqual(output1.loginFailedCallCount, 0)
    }
    
    func test_composingOneOutput_delegatesFaileddMessage() {
        let output1: LoginUseCaseOutputSpy = LoginUseCaseOutputSpy()
        let sut: LoginUseCaseOutputComposer = LoginUseCaseOutputComposer([output1])
        sut.loginFailed()
        XCTAssertEqual(output1.loginSucceededCallCount, 0)
        XCTAssertEqual(output1.loginFailedCallCount, 1)
    }
    
    func test_composingMultipleOutput_delegatesSucceededMessage() {
        let output1: LoginUseCaseOutputSpy = LoginUseCaseOutputSpy()
        let output2: LoginUseCaseOutputSpy = LoginUseCaseOutputSpy()
        let sut: LoginUseCaseOutputComposer = LoginUseCaseOutputComposer([output1, output2])
        sut.loginSucceeded()
        XCTAssertEqual(output1.loginSucceededCallCount, 1)
        XCTAssertEqual(output1.loginFailedCallCount, 0)
        XCTAssertEqual(output2.loginSucceededCallCount, 1)
        XCTAssertEqual(output2.loginFailedCallCount, 0)
    }
    
    // MAKR: Helpers
    private class LoginUseCaseOutputSpy: LoginUseCaseOutput {
        
        var loginSucceededCallCount: Int = 0
        var loginFailedCallCount: Int = 0
        
        func loginSucceeded() {
            loginSucceededCallCount += 1
        }
        
        func loginFailed() {
            loginFailedCallCount += 1
        }
        
    }
    
}
