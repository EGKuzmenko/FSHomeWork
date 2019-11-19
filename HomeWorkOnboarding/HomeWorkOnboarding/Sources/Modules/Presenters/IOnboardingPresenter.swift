//
//  IOnboardingPresenter.swift
//  HomeWorkOnboarding
//
//  Created by Георгий Кузьменко on 18/11/2019.
//  Copyright © 2019 Georgy Kuzmenko. All rights reserved.
//

import UIKit


protocol IOnboardingPresenter: AnyObject {
    func onViewReadyEvent()
    func onSignInButtonTapEvent(login: String?, password: String?)
    func onSignUpButtonTapEvent(vc: UIViewController)
    func showHome()
}
