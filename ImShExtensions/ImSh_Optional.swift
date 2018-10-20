//
//  ImSh_Optional.swift
//  ImShExtensions
//
//  Created by Imran Mohammed on 10/20/18.
//  Copyright © 2018 ImSh. All rights reserved.
//

import UIKit

extension Optional {
 
    /// To get explicit string from optional
    var explicit: String {
        return (self as? String) ?? ""
    }
    
    /// To get explicit int from optional
    var explicitInt: Int {
        return (self as? Int) ?? 0
    }
}
