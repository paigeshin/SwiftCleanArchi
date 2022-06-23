//
//  FirebaseAnalyticsLoginTracker.swift
//  SwiftCleanArchi
//
//  Created by paige shin on 2022/06/23.
//

import Foundation

final class FirebaseAnalyticsLoginTracker: LoginUseCaseOutput {
    
    func loginSucceeded() {
        // send login event to crashlytics
    }
    
    func loginFailed() {
        // send error to crashlytics 
    }
    
}
