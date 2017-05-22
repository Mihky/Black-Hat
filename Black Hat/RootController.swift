//
//  RootController.swift
//  Black Hat
//
//  Created by Kim, Eddy on 5/18/17.
//  Copyright © 2017 Mihky's Laboratory. All rights reserved.
//

import UIKit
import Firebase

class RootController: UIViewController {

    var loginController : LoginController?
    var chatController : ChatTableViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.loadCorrectViewController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadCorrectViewController() {
        var handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            if user != nil {
                // User is signed in. Show home screen
                self.presentHomeController()
            } else {
                // No User is signed in. Show user the login screen
                self.presentLoginController()
            }
        }
    }
    
    func presentHomeController() {
        if self.chatController != nil {
            self.present(self.chatController!, animated: true, completion: nil)
        } else {
            self.chatController = ChatTableViewController()
        }
    }
    
    func presentLoginController() {
        if self.loginController != nil {
            self.present(self.loginController!, animated: true, completion: nil)
//            self.view.bringSubview(toFront: self.loginController!.view)
        } else {
            //            let loginController = LoginController()
            //            self.loginController = loginController
            //            self.addChildViewController(self.loginController!)
            //            self.present(self.loginController!, animated: true, completion: nil)
            //            self.view.addSubview(loginController.view)
        }
    }

}

