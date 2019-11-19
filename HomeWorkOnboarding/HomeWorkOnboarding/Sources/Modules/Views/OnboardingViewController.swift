//
//  ViewController.swift
//  HomeWorkOnboarding
//
//  Created by Георгий Кузьменко on 16/11/2019.
//  Copyright © 2019 Georgy Kuzmenko. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {

    private lazy var presenter: IOnboardingPresenter = {
        return OnboardingPresenter(view: self)
    }()
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.onViewReadyEvent()
    }

    @IBAction func onSignInButtonTap(_ sender: UIButton) {
        presenter.onSignInButtonTapEvent(login: loginTextField.text, password: passwordTextField.text)
    }
    
    @IBAction func onSignUpButtonTap(_ sender: UIButton) {
        presenter.onSignUpButtonTapEvent(vc: self)
    }
    
}

extension OnboardingViewController: IOnboardingView {
    func setupInitialState() {
        title = "Onboarding"
    }
}

