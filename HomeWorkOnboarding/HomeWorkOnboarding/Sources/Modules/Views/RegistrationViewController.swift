//
//  RegistrationViewController.swift
//  HomeWorkOnboarding
//
//  Created by Георгий Кузьменко on 18/11/2019.
//  Copyright © 2019 Georgy Kuzmenko. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    private lazy var presenter: IRegistrationPresenter = {
        return RegistrationPresenter(view: self)
    }()
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onSignInButtonTap(_ sender: UIButton) {
        presenter.onSignInButtonTapEvent(login: loginTextField.text, password: passwordTextField.text)
    }
    
}

extension RegistrationViewController: IRegistrationView {
    func setupInitialState() {
        title = "Registration"
    }
}
