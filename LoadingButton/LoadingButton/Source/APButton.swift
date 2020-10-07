//
//  APButton.swift
//  LoadingButton
//
//  Created by Arvind on 07/10/20.
//  Copyright © 2020 Arvind. All rights reserved.
//

import UIKit

class APButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init with coder has not been implemented")
    }
    
    convenience init(view: UIView , backgroundColor: UIColor , title: String){
        self.init(frame : .zero)
        buttonConstraints(view: view)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configureButton()
    }
    
    var activityIndicator: UIActivityIndicatorView {
        let buttonWidth: Int = Int(self.frame.width)
        let buttonHeight: Int = Int(self.frame.height)
        let activityIndicator = UIActivityIndicatorView(frame: CGRect(x: (buttonWidth / 2) - 25,
                                                                      y: (buttonHeight / 2) - 23,
                                                                      width: 50, height: 50))
        activityIndicator.color = .white
        activityIndicator.isHidden = false
        activityIndicator.style = .large
        activityIndicator.startAnimating()
        translatesAutoresizingMaskIntoConstraints = false
        return activityIndicator
    }
    
    private func configureButton() {
        self.layer.cornerRadius = 18.5
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOpacity = 0.4
        self.layer.shadowRadius = 5.0
        self.layer.shadowOffset = .zero
        self.layer.cornerRadius = 8.0
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func buttonConstraints(view: UIView) {
        view.addSubview(self)
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 48),
            self.widthAnchor.constraint(equalToConstant: 315),
            self.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            self.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    func addTarget(tapGestureRecognizer: UITapGestureRecognizer){
        self.isEnabled = true
        tapGestureRecognizer.addTarget(self, action: #selector(buttonAction(_:)))
        self.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc
    func buttonAction(_ sender: UIButton){
        self.setTitle("", for: .normal)
        self.addSubview(activityIndicator)
    }
}
