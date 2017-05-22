//
//  UIConstants.swift
//  Black Hat
//
//  Created by Kim, Eddy on 5/19/17.
//  Copyright © 2017 Mihky's Laboratory. All rights reserved.
//

import Foundation
import UIKit

struct UIConstants {
    static let screenSize = UIScreen.main.bounds
    static let screenHeight = screenSize.height
    static let screenWidth = screenSize.width
    
    // Centers object horizontally
    static func centerHorizontally(objectSize: CGFloat) -> CGFloat {
        return screenWidth/2 - objectSize/2
    }
}
