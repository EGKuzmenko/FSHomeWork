//
//  IHomePresenter.swift
//  HomeWorkOnboarding
//
//  Created by Георгий Кузьменко on 18/11/2019.
//  Copyright © 2019 Georgy Kuzmenko. All rights reserved.
//

import Foundation

protocol IHomePresenter: AnyObject {
    func onViewReadyEvent()
    func onLogOutButtonTapEvent()
}
