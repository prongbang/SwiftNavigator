//
//  MyViewController.swift
//  SwiftNavigator
//
//  Created by Endtry on 10/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    
    private var viewModel: MyViewModel
    
    init(viewModel: MyViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIWindow().backgroundColor = .white
        print("MyViewController")
    }
    
}
