//
//  LoginViewController.swift
//  Filmes
//
//  Created by Lipe glautier on 25/01/23.
//

import UIKit

class LoginViewController: UIViewController {

    let shareView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = shareView
        shareView.delegate = self
        view.backgroundColor = .white
    }
    private func setupNavigationBar() {

        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
             navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.tintColor = .red
//        UIColor(hex: "#639D31")
             navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
             navigationItem.title =  "Configurações"
        navigationController?.navigationBar.barTintColor = .red
//        UIColor(hex: "#f5f5f5")
             navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(hex: "#639D31")]
        let backButtonNavigation = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: navigationController, action: nil)
            navigationItem.leftBarButtonItem = backButtonNavigation

    }

}

extension LoginViewController: LoginViewDelegate {
    func goToRegisterController() {
        let home = RegisterViewController()
        self.navigationController?.pushViewController(home, animated:true)
    }
}
