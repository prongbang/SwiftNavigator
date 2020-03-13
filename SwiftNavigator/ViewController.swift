//
//  ViewController.swift
//  SwiftNavigator
//
//  Created by Endtry on 10/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController")
    }
    
    
    func navigateToTutorial() {
        TutorialViewController.navigate(navigationController: self.navigationController)
    }
    
    @IBAction
    func buttonAction(sender: UIButton!) {
        navigateToTutorial()
    }
}

