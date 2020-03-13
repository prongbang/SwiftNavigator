//
//  AppCoordinator.swift
//  SwiftNavigator
//
//  Created by Endtry on 10/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator : BaseCoordinator {
    
    let window : UIWindow
    
    init(window: UIWindow) {
        self.window = window
        super.init()
    }
    
    override func start() {
        // preparing root view
        let navigationController = UINavigationController()
        let router = Router(navigationController: navigationController)
        var coordinator: Coordinator
        
        let timestamp = Int64(Date().timeIntervalSince1970 * 1000)
        let isFirst = timestamp % 2 == 0
        
        if isFirst {
            let tutorialCoordinator = TutorialCoordinator(router: router)
            router.push(tutorialCoordinator, isAnimated: true) { [weak self, weak tutorialCoordinator] in
                guard let strongSelf = self, let coordinator = tutorialCoordinator else { return }
                strongSelf.free(coordinator: coordinator)
            }
            coordinator = tutorialCoordinator
        } else {
            let homeCoordinator = HomeCoordinator(router: router)
            router.push(homeCoordinator, isAnimated: true) { [weak self, weak homeCoordinator] in
                guard let strongSelf = self, let coordinator = homeCoordinator else { return }
                strongSelf.free(coordinator: coordinator)
            }
            coordinator = homeCoordinator
        }
        
        
        // store child coordinator
        self.store(coordinator: coordinator)
        coordinator.start()
        
        self.window.configure(with: navigationController)
    }
    
}
