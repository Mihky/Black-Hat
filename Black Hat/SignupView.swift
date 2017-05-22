//
//  SignupView.swift
//  Black Hat
//
//  Created by Kim, Eddy on 5/20/17.
//  Copyright © 2017 Mihky's Laboratory. All rights reserved.
//

import Foundation
import UIKit

class SignupView : UIView {
    
    var container = UIView()
    var navBar = UINavigationBar()
    var navTitle = UINavigationItem(title: "Sign Up")
//    var backButton = UIBarButtonItem()
//    var test = UINavigationItem(title: "ASDASD")
//    var test1 = UINavigationItem(title: "ASDASD")

    var profilePicture = UIImageView()
    var name = UITextField()
    var email = UITextField()
    var password = UITextField()
    var signupButton = UIButton()
    let nameImageView = UIImageView()
    let nameImage = UIImage(named: "nameIcon.png")
    let emailImageView = UIImageView()
    let emailImage = UIImage(named: "emailIcon.png")
    let passwordImageView = UIImageView()
    let passwordImage = UIImage(named: "passwordIcon.png")
    let nameBorder = CALayer()
    let emailBorder = CALayer()
    let passwordBorder = CALayer()
    let borderWidth = CGFloat(1.0)

    private let profileSize : CGFloat = 150.0
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
        
//        self.navTitle.backBarButtonItem?.image = UIImage(named: "back.png")
//        self.backButton.setBackButtonBackgroundImage(UIImage(named: "back.png"), for: UIControlState.normal, barMetrics: UIBarMetrics.default)
//        self.navTitle.backBarButtonItem = backButton
//        self.navTitle.
        
        
        self.navBar.frame = CGRect(x: 0, y: 0, width: UIConstants.screenWidth, height: UIConstants.screenHeight * 0.1)
        self.navBar.backgroundColor = UIColor.clear
        self.navBar.pushItem(self.navTitle, animated: true)
//        self.navBar.pushItem(test, animated: true)
//        self.navBar.pushItem(test1, animated: true)
        
        self.navBar.isTranslucent = true
        self.navBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navBar.shadowImage = UIImage()
        self.container.addSubview(self.navBar)
        
        self.profilePicture.frame = CGRect(x: UIConstants.centerHorizontally(objectSize: profileSize), y: 100, width: profileSize, height: profileSize)
        self.profilePicture.backgroundColor = UIColor.blue
        self.container.addSubview(self.profilePicture)
        
        self.name.placeholder = "Email"
        self.name.frame = CGRect(x: UIConstants.centerHorizontally(objectSize: UIConstants.screenWidth * 0.8), y: 300, width: UIConstants.screenWidth * 0.8, height: UIConstants.screenHeight * 0.05)
        self.name.leftViewMode = UITextFieldViewMode.always
        self.nameImageView.frame = CGRect(x: 0, y: 0, width: iconSize, height: iconSize)
        self.nameImageView.image = self.nameImage
        self.name.leftView = self.nameImageView
        self.name.backgroundColor = UIColor.clear
        self.nameBorder.borderColor = UIColor.lightGray.cgColor
        self.nameBorder.frame = CGRect(x: 0, y: self.name.frame.size.height - borderWidth, width: self.name.frame.size.width, height: self.name.frame.size.height)
        self.nameBorder.borderWidth = borderWidth
        self.name.layer.addSublayer(self.nameBorder)
        self.name.layer.masksToBounds = true
        self.container.addSubview(self.name)
        
        self.email.placeholder = "Email"
        self.email.frame = CGRect(x: UIConstants.centerHorizontally(objectSize: UIConstants.screenWidth * 0.8), y: 350, width: UIConstants.screenWidth * 0.8, height: UIConstants.screenHeight * 0.05)
        self.email.leftViewMode = UITextFieldViewMode.always
        self.emailImageView.frame = CGRect(x: 0, y: 0, width: iconSize, height: iconSize)
        self.emailImageView.image = self.emailImage
        self.email.leftView = self.emailImageView
        self.email.backgroundColor = UIColor.clear
        self.emailBorder.borderColor = UIColor.lightGray.cgColor
        self.emailBorder.frame = CGRect(x: 0, y: self.email.frame.size.height - borderWidth, width: self.email.frame.size.width, height: self.email.frame.size.height)
        self.emailBorder.borderWidth = borderWidth
        self.email.layer.addSublayer(self.emailBorder)
        self.email.layer.masksToBounds = true
        self.container.addSubview(self.email)
        
        password.placeholder = "Password"
        self.password.frame = CGRect(x: UIConstants.centerHorizontally(objectSize: UIConstants.screenWidth * 0.8), y: 400, width: UIConstants.screenWidth * 0.8, height: UIConstants.screenHeight * 0.05)
        self.password.leftViewMode = UITextFieldViewMode.always
        self.passwordImageView.frame = CGRect(x: 0, y: 0, width: iconSize, height: iconSize)
        self.passwordImageView.image = self.passwordImage
        self.password.leftView = self.passwordImageView
        self.password.backgroundColor = UIColor.clear
        self.passwordBorder.borderColor = UIColor.lightGray.cgColor
        self.passwordBorder.frame = CGRect(x: 0, y: self.password.frame.size.height - borderWidth, width: self.password.frame.size.width, height: self.password.frame.size.height)
        self.passwordBorder.borderWidth = borderWidth
        self.password.layer.addSublayer(self.passwordBorder)
        self.password.layer.masksToBounds = true
        self.password.isSecureTextEntry = true
        self.container.addSubview(self.password)
        
        self.signupButton.frame = CGRect(x: UIConstants.centerHorizontally(objectSize: buttonWidth), y: 500.0, width: buttonWidth, height: buttonHeight)
        self.signupButton.setTitle("Sign Up", for: UIControlState.normal)
        self.signupButton.backgroundColor = UIColor.brown
        //        self.loginButton.layer.cornerRadius = 25
        //        self.loginButton.clipsToBounds = true
        self.container.addSubview(self.signupButton)
    }
    
    override func layoutSubviews() {
        self.container.frame = CGRect(x: 0, y: 0, width: UIConstants.screenWidth, height: UIConstants.screenHeight)
    }

}
