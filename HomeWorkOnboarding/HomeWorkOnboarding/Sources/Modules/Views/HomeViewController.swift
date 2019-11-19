//
//  HomeViewController.swift
//  HomeWorkOnboarding
//
//  Created by Георгий Кузьменко on 18/11/2019.
//  Copyright © 2019 Georgy Kuzmenko. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var presenter: IHomePresenter = {
        return HomePresenter(view: self)
    }()
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.onViewReadyEvent()
    }
    
    @IBAction func onLogoutButtonTap(_ sender: UIBarButtonItem) {
        presenter.onLogOutButtonTapEvent()
    }
    
    
}

extension HomeViewController: IHomeView {
    func setupInitialState() {
        self.nameLabel.text = UserDefaults.standard.string(forKey: Keys.loginIdentifier)
    }
}
