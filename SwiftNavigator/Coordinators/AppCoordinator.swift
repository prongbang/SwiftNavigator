//
//  AppCoordinator.swift
//  SwiftNavigator
//
//  Created by Endtry on 10/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

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
        let myCoordinator = MyCoordinator(navigationController: navigationController)

        // store child coordinator
        self.store(coordinator: myCoordinator)
        myCoordinator.start()

        window.rootViewController = navigationController
        window.makeKeyAndVisible()

        // detect when free it
        myCoordinator.isCompleted = { [weak self] in
            self?.free(coordinator: myCoordinator)
        }
    }
}
