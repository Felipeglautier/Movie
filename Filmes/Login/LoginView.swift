//
//  LoginView.swift
//  Filmes
//
//  Created by Lipe glautier on 25/01/23.
//

import UIKit

protocol LoginViewDelegate: AnyObject {
}

class LoginView: UIView {
    
    weak var delegate: LoginViewDelegate?
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = .max
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30, weight: .regular)
        label.textColor = .black
        label.text = "FG Filmes "
        
        return label
    }()
    
    private lazy var loginTextLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = .max
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textColor = .black
        label.text = "Insira seu login"
        
        return label
    }()
    
    private lazy var textFieldLogin: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        textField.textAlignment = .left
        textField.layer.borderWidth = 1.5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.font = UIFont.systemFont(ofSize: 17)
        textField.placeholder = "  Insira seu email ou telefone"
        
        return textField
    }()
    
    private lazy var passwordTextLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = .max
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textColor = .black
        label.text = "Insira sua senha"
        
        return label
    }()
    
    private lazy var textFieldPassword: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        textField.textAlignment = .left
        textField.layer.borderWidth = 1.5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.font = UIFont.systemFont(ofSize: 17)
        textField.placeholder = "  Insira sua senha"
        
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(UIColor(hex: "A9A9A9") , for: .normal)
        button.backgroundColor = UIColor(hex: "#DCDCDC")
        button.layer.shadowRadius = 9
        button.layer.cornerRadius = 20
        
        return button
    }()
    
    private lazy var view: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(hex: "#4F4F4F")
        
        return view
    }()
    
    private lazy var text: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = .max
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textColor = .black
        label.text = "ou"
        
        return label
    }()
    
    private lazy var view2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(hex: "#4F4F4F")
        
        return view
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Faça seu cadastro", for: .normal)
        button.setTitleColor(UIColor(hex: "A9A9A9") , for: .normal)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createSubviews()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
}

//Constraints
extension LoginView {
    func createSubviews() {
        addSubview(titleLabel)
        addSubview(loginTextLabel)
        addSubview(textFieldLogin)
        addSubview(passwordTextLabel)
        addSubview(textFieldPassword)
        addSubview(loginButton)
        addSubview(view)
        addSubview(text)
        addSubview(view2)
        addSubview(registerButton)
    }
    
    func setupConstraints() {
        setupConstraintsTextLabel()
        setupConstraintsLoginTextLabel()
        setupConstraintsTextFieldLogin()
        setupConstraintsPasswordTextLabel()
        setupConstraintsTextFieldPassword()
        setupConstraintsLoginButton()
        setupConstraintsNewRegistrationLabel()
        setupConstraintsView1()
        setupConstraintsText()
        setupConstraintsRegisterButton()
    }
    
    func setupConstraintsTextLabel() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
    
    func setupConstraintsLoginTextLabel() {
        NSLayoutConstraint.activate([
            loginTextLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40),
            loginTextLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        ])
    }
    
    func setupConstraintsTextFieldLogin() {
        NSLayoutConstraint.activate([
            textFieldLogin.topAnchor.constraint(equalTo: loginTextLabel.bottomAnchor, constant: 10),
            textFieldLogin.leadingAnchor.constraint(equalTo: loginTextLabel.leadingAnchor),
            textFieldLogin.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            textFieldLogin.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupConstraintsPasswordTextLabel() {
        NSLayoutConstraint.activate([
            passwordTextLabel.topAnchor.constraint(equalTo: textFieldLogin.bottomAnchor, constant: 40),
            passwordTextLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        ])
    }
    
    func setupConstraintsTextFieldPassword() {
        NSLayoutConstraint.activate([
            textFieldPassword.topAnchor.constraint(equalTo: passwordTextLabel.bottomAnchor, constant: 10),
            textFieldPassword.leadingAnchor.constraint(equalTo: passwordTextLabel.leadingAnchor),
            textFieldPassword.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            textFieldPassword.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupConstraintsLoginButton() {
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 50),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupConstraintsNewRegistrationLabel() {
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 50),
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            view.trailingAnchor.constraint(equalTo: text.leadingAnchor, constant: -20),
            view.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func setupConstraintsText() {
        NSLayoutConstraint.activate([
            text.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 40),
            text.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
    
    func setupConstraintsView1() {
        NSLayoutConstraint.activate([
            view2.topAnchor.constraint(equalTo: view.bottomAnchor),
            view2.leadingAnchor.constraint(equalTo: text.trailingAnchor, constant: 20),
            view2.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            view2.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    func setupConstraintsRegisterButton() {
        NSLayoutConstraint.activate([
            registerButton.topAnchor.constraint(equalTo: text.bottomAnchor, constant: 50),
            registerButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            registerButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            registerButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
