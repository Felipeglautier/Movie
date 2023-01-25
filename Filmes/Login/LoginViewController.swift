//
//  LoginViewController.swift
//  Filmes
//
//  Created by Lipe glautier on 25/01/23.
//

import UIKit

class LoginViewController: UIViewController, LoginViewDelegate {
    
    let shareView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = shareView
        shareView.delegate = self
        view.backgroundColor = .white
    }
}
