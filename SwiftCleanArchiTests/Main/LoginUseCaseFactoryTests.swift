//
//  LoginUseCaseFactoryTests.swift
//  SwiftCleanArchiTests
//
//  Created by paige shin on 2022/06/23.
//

import XCTest
@testable import SwiftCleanArchi

class LoginUseCaseFactoryTests: XCTestCase {
    
    func test() {
        let sut = LoginUseCaseFactory()
        let useCase = sut.makeUseCase()
        let composer = useCase.outputs as? LoginUseCaseOutputComposer
        XCTAssertNotNil(composer)
        XCTAssertEqual(composer?.outputs.count, 3)
//        XCTAssertEqual(composer?.outputs.filter { $0 is LoginPresenter }.count, 1)
//        XCTAssertEqual(composer?.outputs.filter { $0 is CrashlyticsLoginTracker }.count, 1)
//        XCTAssertEqual(composer?.outputs.filter { $0 is FirebaseAnalyticsLoginTracker }.count, 1)
        XCTAssertEqual(composer?.count(ofType: LoginPresenter.self), 1)
        XCTAssertEqual(composer?.count(ofType: CrashlyticsLoginTracker.self), 1)
        XCTAssertEqual(composer?.count(ofType: FirebaseAnalyticsLoginTracker.self), 1)
    }

}

private extension LoginUseCaseOutputComposer {
    
    func count<T>(ofType: T.Type) -> Int {
        return outputs.filter { $0 is T }.count
    }
    
}
