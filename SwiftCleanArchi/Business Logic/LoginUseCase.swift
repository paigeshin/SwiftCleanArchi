//
//  LoginUsecase.swift
//  SwiftCleanArchi
//
//  Created by paige shin on 2022/06/23.
//

import Foundation

protocol LoginUseCaseOutput {
    func loginSucceeded()
    func loginFailed() 
}

final class LoginUseCase {
    
    let outputs: LoginUseCaseOutput

    init(outputs: LoginUseCaseOutput) {
        self.outputs = outputs
    }

    func login(name: String, password: String) {
        // if success outputs.loginSucceeded()
        // else outputs.loginFailed()
    }
    
}
