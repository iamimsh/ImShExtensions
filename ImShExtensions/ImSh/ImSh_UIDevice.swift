//
//  ImSh_UIDevice.swift
//  ImShExtensions
//
//  Created by Imran Mohammed on 10/20/18.
//  Copyright © 2018 ImSh. All rights reserved.
//

import UIKit

extension UIDevice {
    
    /// Screen size
    static var screenSize: CGSize {
        return UIScreen.main.bounds.size
    }
    
    /// Screen width
    static var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    /// Screen height
    static var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    /// Device type
    static var deviceType: UIUserInterfaceIdiom {
        return UIDevice.current.userInterfaceIdiom
    }
    
    /// to check if device is iPhone
    static var isIphone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    
    /// To check if device is iPad
    static var isIpad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
}
