//
//  UIWindow+Extensions.swift
//  SwiftNavigator
//
//  Created by Endtry on 13/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import UIKit

// MARK: - UIWindow Extension
extension UIWindow {
    func configure(with navigation: UINavigationController) {
        makeKeyAndVisible()
        rootViewController = navigation
    }
}
