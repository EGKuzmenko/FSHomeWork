//
//  IRegistrationPresenter.swift
//  HomeWorkOnboarding
//
//  Created by Георгий Кузьменко on 18/11/2019.
//  Copyright © 2019 Georgy Kuzmenko. All rights reserved.
//

import Foundation

protocol IRegistrationPresenter: AnyObject {
    func onViewReadyEvent()
    func onSignInButtonTapEvent(login: String?, password: String?)
    func showHome()
}
