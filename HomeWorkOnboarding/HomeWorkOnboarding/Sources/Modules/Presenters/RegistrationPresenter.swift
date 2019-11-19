//
//  RegistrationPresenter.swift
//  HomeWorkOnboarding
//
//  Created by Георгий Кузьменко on 18/11/2019.
//  Copyright © 2019 Georgy Kuzmenko. All rights reserved.
//

import UIKit

class RegistrationPresenter: IRegistrationPresenter {

    private weak var registrationView: IRegistrationView?
    private var userDefaults = UserDefaults.standard
    
    init(view: IRegistrationView) {
        self.registrationView = view
    }
    
    func onViewReadyEvent() {
        registrationView?.setupInitialState()
    }
    
    func onSignInButtonTapEvent(login: String?, password: String?) {
        guard let login = login, let password = password else {
            return
        }
        userDefaults.set(login, forKey: Keys.loginIdentifier)
        userDefaults.set(password, forKey: Keys.passIdentifier)
        userDefaults.set(true, forKey: Keys.enterIdentifier)
        self.showHome()
    }
    
    func showHome() {
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        let homeViewController = storyboard.instantiateViewController(identifier: "HomeView")
        let navigationController = UINavigationController(rootViewController: homeViewController)
        let appdelegate = UIApplication.shared.delegate as? AppDelegate
        appdelegate?.window?.rootViewController = navigationController
    }
}
