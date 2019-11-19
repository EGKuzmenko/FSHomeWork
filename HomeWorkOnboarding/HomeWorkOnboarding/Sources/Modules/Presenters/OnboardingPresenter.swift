//
//  OnboardingPresenter.swift
//  HomeWorkOnboarding
//
//  Created by Георгий Кузьменко on 18/11/2019.
//  Copyright © 2019 Georgy Kuzmenko. All rights reserved.
//

import UIKit


class OnboardingPresenter: IOnboardingPresenter {
    
    private weak var onboardingView: IOnboardingView?
    private let userDefaults = UserDefaults.standard
    
    
    init(view: IOnboardingView) {
        self.onboardingView = view
    }
    
    func onViewReadyEvent() {
        onboardingView?.setupInitialState()
        if UserDefaults.standard.bool(forKey: Keys.enterIdentifier) {
            self.showHome()
        }
        
    }
    
    func onSignInButtonTapEvent(login: String?, password: String?) {
        if let name = userDefaults.object(forKey: Keys.loginIdentifier) as? String, let pass = userDefaults.object(forKey: Keys.passIdentifier) as? String {
            if name == login && pass == password {
                self.showHome()
                userDefaults.set(true, forKey: "enter")
            }
        }
    }
    
    func onSignUpButtonTapEvent(vc: UIViewController) {
        let storyboard = UIStoryboard(name: "Registration", bundle: nil)
        let regVc = storyboard.instantiateViewController(identifier: "RegistrationView")
        vc.navigationController?.pushViewController(regVc, animated: true)
    }
    
    func showHome() {
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        let homeViewController = storyboard.instantiateViewController(identifier: "HomeView")
        let navigationController = UINavigationController(rootViewController: homeViewController)
        let appdelegate = UIApplication.shared.delegate as? AppDelegate
        appdelegate?.window?.rootViewController = navigationController
    }
}
