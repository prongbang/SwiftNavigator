//
//  TutorialCoordinator.swift
//  SwiftNavigator
//
//  Created by Endtry on 10/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import UIKit

class TutorialCoordinator: BaseCoordinator {
    
    var navigationController: UINavigationController?
    var product: Product?

    init(product: Product, navigationController :UINavigationController?) {
        self.navigationController = navigationController
        self.product = product
    }

    override func start() {
        
    }
    
}
