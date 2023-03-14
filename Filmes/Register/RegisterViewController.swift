//
//  RegisterViewController.swift
//  Filmes
//
//  Created by Lipe glautier on 13/03/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    let shareView = RegisterView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = shareView
        shareView.delegate = self
        view.backgroundColor = .white
    }
}

extension RegisterViewController: RegisterViewDelegate {
    func acountCreated() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
