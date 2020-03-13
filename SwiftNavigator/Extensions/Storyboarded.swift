//
//  Storyboarded.swift
//  SwiftNavigator
//
//  Created by Endtry on 13/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate(name: String) -> Self
}

extension Storyboarded where Self: UIViewController {
    
    static func instantiate(name: String = "Main") -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: name, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
    
}
