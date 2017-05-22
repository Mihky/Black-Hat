//
//  ChatTableViewController.swift
//  Black Hat
//
//  Created by Kim, Eddy on 5/20/17.
//  Copyright © 2017 Mihky's Laboratory. All rights reserved.
//

import Foundation
import UIKit

class ChatTableViewController : UITableViewController {
    
//    var chatTableView = ChatTableViewView()
    
    override func loadView() {
//        self.view = chatTableView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationItem.title = "P"
//        self.view.backgroundColor = UIColor.lightGray
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.backgroundColor = UIColor.blue
//        self.tableView.tableFooterView = UIView()
        
//        self.listRetriever?(self)
        
//        self.tableView.addSubview(self.activityIndicator)
//        self.activityIndicator.startAnimating()
    }

    
}
