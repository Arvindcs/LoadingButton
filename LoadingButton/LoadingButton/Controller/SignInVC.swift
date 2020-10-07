//
//  SignInVC.swift
//  LoadingButton
//
//  Created by Arvind on 07/10/20.
//  Copyright © 2020 Arvind. All rights reserved.
//

import UIKit

class SignInVC: UIViewController {
    
    
    //MARK:- variables
    var signInButton: APButton!
    let tapGestureRecog = UITapGestureRecognizer()
    
    //MARK:- view life cycle method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        signInButton = APButton(view: self.view, backgroundColor: UIColor(red: 0.29, green: 0.56, blue: 0.89, alpha: 1), title: "Sign In")
        signInButton.addTarget(tapGestureRecognizer: tapGestureRecog)
    }
}
