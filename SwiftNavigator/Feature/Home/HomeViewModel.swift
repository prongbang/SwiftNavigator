//
//  HomeViewModel.swift
//  SwiftNavigator
//
//  Created by Endtry on 13/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import Foundation

class HomeViewModel {
    
    var reloadTableViewClosure: () -> () = {  }
    var didTappedStudent: (String) -> () = { _ in }
    var didTappedNewStudent: () -> () = {  }
    var didTapBack: () -> () = {  }
    
    var hasContent: Dynamic<Bool> = Dynamic(false)
    
    func fecthData() {
        
    }
}
