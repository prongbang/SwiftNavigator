//
//  HomeCoordinator.swift
//  SwiftNavigator
//
//  Created by Endtry on 13/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//


import Foundation
import UIKit

class HomeCoordinator: BaseCoordinator {
    
    lazy var controller: HomeViewController = {
        let viewController = HomeViewController.instantiate(name: "Home")
        let viewModel: HomeViewModel = HomeViewModel()
        viewController.viewModel = viewModel
        return viewController
    }()
    
    let router: RouterProtocol
    init(router: RouterProtocol) {
        self.router = router
    }
    
    override func start() {
        self.controller.viewModel.didTappedStudent = { [weak self] student in
            //            guard let strongSelf = self else { return }
            //            strongSelf.listPresence(student: student)
        }
        
        self.controller.viewModel.didTappedNewStudent = { [weak self] in
            //            guard let strongSelf = self else { return }
            //            strongSelf.newEditUser()
        }
    }
    
    //    private func listPresence(student: Student) {
    //        let listStudentCoordinator: ListPresenceCoordinator = ListPresenceCoordinator(router: self.router, student: student)
    //        self.store(coordinator: listStudentCoordinator)
    //        listStudentCoordinator.start()
    //        self.router.push(listStudentCoordinator, isAnimated: true) { [weak self, weak listStudentCoordinator] in
    //            guard let strongSelf = self, let listStudentCoordinator = listStudentCoordinator else { return }
    //            strongSelf.free(coordinator: listStudentCoordinator)
    //        }
    //    }
    //
    //    private func newEditUser() {
    //        let newEditUserCoordinator: NewEditUserCoordinator = NewEditUserCoordinator(router: self.router)
    //        self.store(coordinator: newEditUserCoordinator)
    //        newEditUserCoordinator.start()
    //        self.router.push(newEditUserCoordinator, isAnimated: true) { [weak self, weak newEditUserCoordinator] in
    //            guard let strongSelf = self, let newEditUserCoordinator = newEditUserCoordinator else { return }
    //            strongSelf.free(coordinator: newEditUserCoordinator)
    //        }
    //    }
    //
}

extension HomeCoordinator: Drawable {
    var viewController: UIViewController? { return controller }
}
