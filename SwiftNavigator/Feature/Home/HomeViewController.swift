//
//  HomeViewController.swift
//  SwiftNavigator
//
//  Created by Endtry on 13/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController, Storyboarded {
    
    internal var viewModel: HomeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.viewModel.fecthData()
    }
    
    // MARK: Internal Methods
    internal func setup(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
}
