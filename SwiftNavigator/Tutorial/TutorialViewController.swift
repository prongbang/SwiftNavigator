//
//  TutorialViewController.swift
//  SwiftNavigator
//
//  Created by Endtry on 10/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TutorialViewController")
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    static func navigate(navigationController: UINavigationController?) {
        // By Storyboard and Add `Identity -> Storyboard ID: TutorialViewController`
        let storeboardId = "TutorialViewController"
        let viewController = UIStoryboard(name: "Tutorial", bundle: nil).instantiateViewController(withIdentifier: storeboardId) as! TutorialViewController
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    static func navigateXib(navigationController: UINavigationController?) {
        // By Xib or Programmatically
        let viewController = TutorialViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
