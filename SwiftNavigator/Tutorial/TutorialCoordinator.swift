//
//  TutorialCoordinator.swift
//  SwiftNavigator
//
//  Created by Endtry on 10/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import UIKit

class TutorialCoordinator: BaseCoordinator {
    
    lazy var controller: TutorialViewController = {
        let viewController = TutorialViewController.instantiate(name: "Tutorial")
        let viewModel: TutorialViewModel = TutorialViewModel()
        viewController.viewModel = viewModel
        return viewController
    }()
    
    let router: RouterProtocol
    init(router: RouterProtocol) {
        self.router = router
    }
    
    override func start() {
        
    }
    
}

extension TutorialCoordinator: Drawable {
    var viewController: UIViewController? { return controller }
}
