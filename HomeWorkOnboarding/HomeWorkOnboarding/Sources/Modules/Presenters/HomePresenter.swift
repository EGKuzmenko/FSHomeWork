//
//  HomePresenter.swift
//  HomeWorkOnboarding
//
//  Created by Георгий Кузьменко on 18/11/2019.
//  Copyright © 2019 Georgy Kuzmenko. All rights reserved.
//

import UIKit

class HomePresenter: IHomePresenter {
        
    private weak var homeView: IHomeView?
    private let userDefaults = UserDefaults.standard

    init(view: IHomeView) {
        self.homeView = view
    }
    
    func onViewReadyEvent() {
        homeView?.setupInitialState()
    }
    
    func onLogOutButtonTapEvent() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let onboardingViewController = storyboard.instantiateViewController(identifier: "Onboarding")
        let navigationController = UINavigationController(rootViewController: onboardingViewController)
        let appdelegate = UIApplication.shared.delegate as? AppDelegate
        appdelegate?.window?.rootViewController = navigationController
        
        userDefaults.set(false, forKey: Keys.enterIdentifier)
    }
}
