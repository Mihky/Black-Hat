//
//  SignupController.swift
//  Black Hat
//
//  Created by Kim, Eddy on 5/20/17.
//  Copyright © 2017 Mihky's Laboratory. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class SignupController : UIViewController {

    var signupView = SignupView()
    
    override func loadView() {
        self.view = signupView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.signupView.signupButton.addTarget(self, action: #selector(signup), for: UIControlEvents.touchUpInside)
    }
    
    func signup() {
        if self.signupView.name.text == "" || self.signupView.email.text == "" || self.signupView.password.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter in the missing fields", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
        } else if !isValidPassword(password: self.signupView.password.text!){
            let alertController = UIAlertController(title: "Error", message: "Please satisfy all password requirements", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
        } else {
            Auth.auth().createUser(withEmail: self.signupView.email.text!, password: self.signupView.password.text!) { (user, error) in
                if error != nil {
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                
                    self.present(alertController, animated: true, completion: nil)
                } else {
                    print("SignUp Success!")
                }
            }
        }
    }

    func isValidPassword(password: String) -> Bool {
        let passwordRegex = "^(?=.*[0-9])(?=.*[a-z]).{8}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: password)
    }
}
