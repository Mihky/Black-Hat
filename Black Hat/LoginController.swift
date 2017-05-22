//
//  LoginController.swift
//  Black Hat
//
//  Created by Kim, Eddy on 5/19/17.
//  Copyright © 2017 Mihky's Laboratory. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth

class LoginController : UIViewController, UITextFieldDelegate {
    
    var loginView = LoginView()
    var chatController : ChatTableViewController?
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.loginView.username.delegate = self
        self.loginView.password.delegate = self
        self.loginView.loginButton.addTarget(self, action: #selector(authenticate), for: UIControlEvents.touchUpInside)
//        self.loginView.signupButton
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func authenticate() {
        let usernameString = self.loginView.username.text!
        let passwordString = self.loginView.password.text!
        var alertController : UIAlertController?
        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        if usernameString == "" && passwordString == "" {
            alertController = UIAlertController(title: "Error", message: "Enter username and password.", preferredStyle: UIAlertControllerStyle.alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController?.addAction(defaultAction)
            
            self.present(alertController!, animated: true, completion: nil)
        } else if usernameString == "" {
            alertController = UIAlertController(title: "Error", message: "Enter username", preferredStyle: UIAlertControllerStyle.alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController?.addAction(defaultAction)
            
            self.present(alertController!, animated: true, completion: nil)
        } else if passwordString == "" {
            alertController = UIAlertController(title: "Error", message: "Enter password.", preferredStyle: UIAlertControllerStyle.alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController?.addAction(defaultAction)
            
            self.present(alertController!, animated: true, completion: nil)
        } else {
            Auth.auth().signIn(withEmail: self.loginView.username.text!, password: self.loginView.password.text!) { (user, error) in
                if error != nil {
                    alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController?.addAction(defaultAction)
                    
                    self.present(alertController!, animated: true, completion: nil)
                } else {
                    if self.chatController == nil {
                        let chatController = ChatTableViewController()
                        self.chatController = chatController
                    }
                    self.present(self.chatController!, animated: true, completion: nil)    
                }
            }
        }
    }
    
    func signupSegue() {
        // segue to signup controller
    }
    
}
