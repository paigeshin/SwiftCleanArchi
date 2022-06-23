//
//  LoginUseCaseFactory.swift
//  SwiftCleanArchi
//
//  Created by paige shin on 2022/06/23.
//

import Foundation

final class LoginUseCaseFactory {
    
    func makeUseCase() -> LoginUseCase {
        return LoginUseCase(outputs: LoginUseCaseOutputComposer([
            LoginPresenter(),
            CrashlyticsLoginTracker(),
            FirebaseAnalyticsLoginTracker()
        ]))
    }
    
}
