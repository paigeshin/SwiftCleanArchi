//
//  LoginUseCaseOutputComposer.swift
//  SwiftCleanArchi
//
//  Created by paige shin on 2022/06/23.
//

import Foundation

final class LoginUseCaseOutputComposer: LoginUseCaseOutput {
    
    let outputs: [LoginUseCaseOutput]
    
    init(_ outputs: [LoginUseCaseOutput]) {
        self.outputs = outputs
    }
    
    func loginSucceeded() {
        outputs.forEach { $0.loginSucceeded() }
    }
    
    func loginFailed() {
        outputs.forEach { $0.loginFailed() }
    }
    
}
