//
//  BaseCoordinator.swift
//  SwiftNavigator
//
//  Created by Endtry on 10/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

class BaseCoordinator : Coordinator {
    var childCoordinators : [Coordinator] = []
    var isCompleted: (() -> ())?

    func start() {
        fatalError("Children should implement `start`.")
    }
}
