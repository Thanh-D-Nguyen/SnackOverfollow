//
//  WelcomeMainPresenter.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/12.
//

import Foundation

protocol WelcomeMainPresenterInterface: AnyObject {
    func signInAction(_ actionTag: Int)
}

class WelcomeMainPresenter {
    private let interactor: WelcomeMainInteractorInterface
    private let socialSignInInteractor: SocialSignInInteractorInterface
    private let wireframe: WelcomeMainWireframeInterface
    
    init(interactor: WelcomeMainInteractorInterface,
         wireframe: WelcomeMainWireframeInterface) {
        self.interactor = interactor
        self.wireframe = wireframe
        self.socialSignInInteractor = SocialSignInInteractor()
    }
}

extension WelcomeMainPresenter: WelcomeMainPresenterInterface {
    func signInAction(_ actionTag: Int) {
        guard let signInType = SignInType(rawValue: actionTag) else { return }
        switch signInType {
            case .signUpWithMail:
                wireframe.showEmailLogin()
            case .apple:
                socialSignInInteractor.signInWithApple()
            case .google:
                socialSignInInteractor.signInWithGoogle()
            case .facebook:
                socialSignInInteractor.signInWithFacebook()
        }
    }
}
