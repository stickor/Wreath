//
//  BaseVC.swift
//  Wreath
//
//  Created by 杨引 on 2018/10/9.
//  Copyright © 2018 Y. All rights reserved.
//

import UIKit

class BaseVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
    }
    
    deinit {
        debugPrint(NSStringFromClass(self.classForCoder))
    }

}
