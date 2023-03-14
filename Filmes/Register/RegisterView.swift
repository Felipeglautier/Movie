//
//  RegisterView.swift
//  Filmes
//
//  Created by Lipe glautier on 13/03/23.
//

import UIKit

protocol RegisterViewDelegate: AnyObject {
    func acountCreated()
}

class RegisterView: UIView {
    
    weak var delegate: RegisterViewDelegate?
        
    private lazy var name: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = .max
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textColor = .black
        label.text = "Insira seu nome"
        
        return label
    }()
    
    private lazy var textFieldName: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        textField.textAlignment = .left
        textField.layer.borderWidth = 1.5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.font = UIFont.systemFont(ofSize: 17)
        textField.placeholder = "  Nome"
        
        return textField
    }()
    
    private lazy var surname: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = .max
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textColor = .black
        label.text = "Insira seu sobrenome"
        
        return label
    }()
    
    private lazy var textFieldSurname: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        textField.textAlignment = .left
        textField.layer.borderWidth = 1.5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.font = UIFont.systemFont(ofSize: 17)
        textField.placeholder = "  Sobrenome"
        
        return textField
    }()
    
    private lazy var email: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = .max
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textColor = .black
        label.text = "crie seu email"
        
        return label
    }()
    
    private lazy var textFieldEmail: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        textField.textAlignment = .left
        textField.layer.borderWidth = 1.5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.font = UIFont.systemFont(ofSize: 17)
        textField.placeholder = "  Email"
        
        return textField
    }()
    
    private lazy var emailConfirmation: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = .max
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textColor = .black
        label.text = "Confirme seu email"
        
        return label
    }()
    
    private lazy var textFieldEmailConfirmation: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        textField.textAlignment = .left
        textField.layer.borderWidth = 1.5
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.font = UIFont.systemFont(ofSize: 17)
        textField.placeholder = "  Confirme seu email"
        
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
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Finalize o seu cadastro", for: .normal)
        button.setTitleColor(UIColor(hex: "A9A9A9") , for: .normal)
        button.addTarget(nil, action: #selector(goToLoginViewController), for: .touchUpInside)

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
extension RegisterView {
    func createSubviews() {
        addSubview(name)
        addSubview(textFieldName)
        addSubview(surname)
        addSubview(textFieldSurname)
        addSubview(email)
        addSubview(textFieldEmail)
        addSubview(emailConfirmation)
        addSubview(textFieldEmailConfirmation)
                addSubview(registerButton)
        //        addSubview(registerButton)
    }
    
    func setupConstraints() {
        setupConstraintsName()
        setupConstraintsTextFieldName()
        setupConstraintsSurname()
        setupConstraintsTextFieldSurname()
        setupConstraintsEmail()
        setupConstraintsTextFieldEmail()
        setupConstraintsEmailConfirmation()
        setupConstraintsTextFieldEmailConfirmation()
        setupConstraintsRegisterButton()
    }
    
    func setupConstraintsName() {
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            name.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        ])
    }
    func setupConstraintsTextFieldName() {
        NSLayoutConstraint.activate([
            textFieldName.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 10),
            textFieldName.leadingAnchor.constraint(equalTo: name.leadingAnchor),
            textFieldName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            textFieldName.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    func setupConstraintsSurname() {
        NSLayoutConstraint.activate([
            surname.topAnchor.constraint(equalTo: textFieldName.bottomAnchor, constant: 20),
            surname.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        ])
    }
    func setupConstraintsTextFieldSurname() {
        NSLayoutConstraint.activate([
            textFieldSurname.topAnchor.constraint(equalTo: surname.bottomAnchor, constant: 10),
            textFieldSurname.leadingAnchor.constraint(equalTo: surname.leadingAnchor),
            textFieldSurname.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            textFieldSurname.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    func setupConstraintsEmail() {
        NSLayoutConstraint.activate([
            email.topAnchor.constraint(equalTo: textFieldSurname.bottomAnchor, constant: 20),
            email.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        ])
    }
    func setupConstraintsTextFieldEmail() {
        NSLayoutConstraint.activate([
            textFieldEmail.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 10),
            textFieldEmail.leadingAnchor.constraint(equalTo: email.leadingAnchor),
            textFieldEmail.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            textFieldEmail.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    func setupConstraintsEmailConfirmation() {
        NSLayoutConstraint.activate([
            emailConfirmation.topAnchor.constraint(equalTo: textFieldEmail.bottomAnchor, constant: 20),
            emailConfirmation.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        ])
    }

    func setupConstraintsTextFieldEmailConfirmation() {
        NSLayoutConstraint.activate([
            textFieldEmailConfirmation.topAnchor.constraint(equalTo: emailConfirmation.bottomAnchor, constant: 10),
            textFieldEmailConfirmation.leadingAnchor.constraint(equalTo: emailConfirmation.leadingAnchor),
            textFieldEmailConfirmation.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            textFieldEmailConfirmation.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    func setupConstraintsRegisterButton() {
        NSLayoutConstraint.activate([
            registerButton.topAnchor.constraint(equalTo: textFieldEmailConfirmation.bottomAnchor, constant: 50),
            registerButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            registerButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            registerButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    // button action
    @objc func goToLoginViewController(sender: UIButton!) {
        self.delegate?.acountCreated()
    }
}
