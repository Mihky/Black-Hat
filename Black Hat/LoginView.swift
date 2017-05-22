//
//  LoginView.swift
//  Black Hat
//
//  Created by Kim, Eddy on 5/19/17.
//  Copyright © 2017 Mihky's Laboratory. All rights reserved.
//

import Foundation
import UIKit

class LoginView : UIView {
    
    var container = UIView()
    var logo = UIImageView()
    var username = UITextField()
    var password = UITextField()
    var loginButton = UIButton()
    var signupButton = UILabel()
//    var signupButton = UIButton()
    var facebookButton = UIButton()
    let usernameImageView = UIImageView()
    let usernameImage = UIImage(named: "usernameIcon.png")
    let passwordImageView = UIImageView()
    let passwordImage = UIImage(named: "passwordIcon.png")
    let usernameBorder = CALayer()
    let passwordBorder = CALayer()
    let borderWidth = CGFloat(1.0)

    private let logoSize : CGFloat = 150.0
    private let iconSize : CGFloat = 25.0
    private let buttonWidth : CGFloat = UIConstants.screenWidth * 0.8
    private let buttonHeight : CGFloat = UIConstants.screenHeight * 0.1
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupSubviews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSubviews() {
        self.addSubview(self.container)
        
        self.logo.frame = CGRect(x: UIConstants.centerHorizontally(objectSize: logoSize), y: 100, width: logoSize, height: logoSize)
        self.logo.backgroundColor = UIColor.black
        self.container.addSubview(self.logo)
        
        self.username.placeholder = "Email"
        self.username.frame = CGRect(x: UIConstants.centerHorizontally(objectSize: UIConstants.screenWidth * 0.8), y: 300, width: UIConstants.screenWidth * 0.8, height: UIConstants.screenHeight * 0.05)
        self.username.leftViewMode = UITextFieldViewMode.always
        self.usernameImageView.frame = CGRect(x: 0, y: 0, width: iconSize, height: iconSize)
        self.usernameImageView.image = self.usernameImage
        self.username.leftView = self.usernameImageView
        self.username.backgroundColor = UIColor.clear
        self.usernameBorder.borderColor = UIColor.lightGray.cgColor
        self.usernameBorder.frame = CGRect(x: 0, y: self.username.frame.size.height - borderWidth, width: self.username.frame.size.width, height: self.username.frame.size.height)
        self.usernameBorder.borderWidth = borderWidth
        self.username.layer.addSublayer(usernameBorder)
        self.username.layer.masksToBounds = true
        self.container.addSubview(self.username)
        
        password.placeholder = "Password"
        self.password.frame = CGRect(x: UIConstants.centerHorizontally(objectSize: UIConstants.screenWidth * 0.8), y: 350, width: UIConstants.screenWidth * 0.8, height: UIConstants.screenHeight * 0.05)
        self.password.leftViewMode = UITextFieldViewMode.always
        self.passwordImageView.frame = CGRect(x: 0, y: 0, width: iconSize, height: iconSize)
        self.passwordImageView.image = self.passwordImage
        self.password.leftView = self.passwordImageView
        self.password.backgroundColor = UIColor.clear
        self.passwordBorder.borderColor = UIColor.lightGray.cgColor
        self.passwordBorder.frame = CGRect(x: 0, y: self.password.frame.size.height - borderWidth, width: self.password.frame.size.width, height: self.password.frame.size.height)
        self.passwordBorder.borderWidth = borderWidth
        self.password.layer.addSublayer(passwordBorder)
        self.password.layer.masksToBounds = true
        self.password.isSecureTextEntry = true
        self.container.addSubview(self.password)
        
        self.loginButton.frame = CGRect(x: UIConstants.centerHorizontally(objectSize: buttonWidth), y: 500.0, width: buttonWidth, height: buttonHeight)
        self.loginButton.setTitle("Log In", for: UIControlState.normal)
        self.loginButton.backgroundColor = UIColor.brown
//        self.loginButton.layer.cornerRadius = 25
//        self.loginButton.clipsToBounds = true
        self.container.addSubview(self.loginButton)
        
        self.signupButton.frame = CGRect(x: 0, y: 600, width: UIConstants.screenWidth, height: 50)
        self.signupButton.text = "Don't have an account? Sign Up"
        self.signupButton.textAlignment = NSTextAlignment.center
        self.container.addSubview(self.signupButton)

    }
    
    override func layoutSubviews() {
        self.container.frame = CGRect(x: 0, y: 0, width: UIConstants.screenWidth, height: UIConstants.screenHeight)
    }
    
}
