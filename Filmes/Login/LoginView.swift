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
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = .max
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.text = "Filmes"
        
        return label
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
        addSubview(textLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}
