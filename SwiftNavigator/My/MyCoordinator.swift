//
//  MyCoordinator.swift
//  SwiftNavigator
//
//  Created by Endtry on 10/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import UIKit

class MyCoordinator : BaseCoordinator {

    var navigationController: UINavigationController?

    init(navigationController :UINavigationController?) {
        self.navigationController = navigationController
    }

    override func start() {

        // prepare the associated view and injecting its viewModel
        let viewModel = MyViewModel()
        let viewController = MyViewController(viewModel: viewModel)

//        // for specific events from viewModel, define next navigation
//        viewModel.didSelect = { [weak self] product in
//            guard let strongSelf = self else { return }
//            strongSelf.showDetail(product, in: strongSelf.navigationController)
//        }
//
//        // if user navigates back, view should be released, so does the coordinator, flow is completed
//        viewModel.didTapBack = { [weak self] in
//            self?.isCompleted?()
//        }

        navigationController?.pushViewController(viewController, animated: true)
    }

//    // we can go further in our flow if we need to
//    func showDetail(_ product: Product, in navigationController: UINavigationController?) {
//        let newCoordinator = TutorialCoordinator(product: product, navigationController: navigationController)
//        self.store(coordinator: newCoordinator)
//    }
}
