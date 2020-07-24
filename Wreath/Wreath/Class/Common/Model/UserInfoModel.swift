//
//  UserInfoModel.swift
//  Wreath
//
//  Created by 杨引 on 2018/11/6.
//  Copyright © 2018 Y. All rights reserved.
//

import UIKit

class UserInfoModel {
    
    var userName = NSString()
    var userAge = NSInteger()
    
    static let sharedInstance = UserInfoModel()
//    class var sharedInstance: UserInfoModel {
//        struct Static {
//            static let instance: UserInfoModel = UserInfoModel()
//        }
//        return Static.instance
//    }
    
   
}


