//
//  SwiftFile.swift
//  Wreath
//
//  Created by 杨引 on 2018/10/9.
//  Copyright © 2018 Y. All rights reserved.
//

import Foundation
import UIKit
import BFKit
import SnapKit
import Moya
import Kingfisher
import HandyJSON

let mainWindow = UIApplication.shared.delegate?.window
@available(iOS 11.0, *)
let isIphoneX = mainWindow??.safeAreaInsets.bottom ?? 0 > CGFloat.init(0) ? true : false
let kStatusBarHeight = UIApplication.shared.statusBarFrame.size.height
let kNavBarHeight = 44.0
let kTabBarHeight = UIApplication.shared.statusBarFrame.size.height > 20.0 ? 83.0 : 49.0
/// 导航的高度
let  kTopHeight =   kStatusBarHeight + CGFloat.init(kNavBarHeight)
/// 底部导航的高度
@available(iOS 11.0, *)
let  kBottomSafeHeight = isIphoneX ? 34:0
//获取屏幕宽度  高度
let  SCREEN_WIDTH = UIScreen.main.bounds.width

let  SCREEN_HEIGH = UIScreen.main.bounds.height

// BASE_URL
let BASE_URL = "http://bidaiapi.7diancaijing.com/"//http://develop.api.7diancaijing.com/


