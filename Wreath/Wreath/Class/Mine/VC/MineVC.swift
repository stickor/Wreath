//
//  MineVC.swift
//  Wreath
//
//  Created by 杨引 on 2018/10/9.
//  Copyright © 2018 Y. All rights reserved.
//

import UIKit

class MineVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true
        
        let scrollView = UIScrollView()
        
        scrollView.frame  = CGRect(x: 0, y: 0, width:UIScreen.screenWidth , height: UIScreen.screenHeight)
        scrollView.contentSize = CGSize(width: SCREEN_WIDTH, height: SCREEN_HEIGH)
        self.view.addSubview(scrollView)
        
        let topImageView = UIImageView()
        topImageView.image = UIImage.init(named: "个人中心-背景")
        scrollView.addSubview(topImageView)
        topImageView.snp.makeConstraints { (make) in
            make.centerX.equalTo(scrollView)
            make.top.equalTo(scrollView)
        }
        
        
    }
    func getData(name:String) {
        
        mineProvider.request(.url3(name,["param1":"param1111","param2":"param22222"])) { result in
            do {
                let response = try result.dematerialize()
                print("成功"+"\(response)")
                //let value = try response.mapNSArray()
                //print("成功"+"\(value)")
                
            } catch {
                let printableError = error as CustomStringConvertible
                print("失败"+"\(printableError.description)")
            }
        }
        
        
    }

    

}
