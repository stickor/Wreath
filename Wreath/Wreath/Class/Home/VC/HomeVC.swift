//
//  HomeVC.swift
//  Wreath
//
//  Created by 杨引 on 2018/10/9.
//  Copyright © 2018 Y. All rights reserved.
//

import UIKit

class HomeVC: BaseVC ,UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate{
    
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        UserInfoModel.sharedInstance.userName = "jack"
        
        debugPrint("\(UserInfoModel.sharedInstance.userName)" + "\(UserInfoModel.sharedInstance.userAge)")
        
        let scrollView = UIScrollView()
        scrollView.frame = CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGH)
        scrollView.contentSize = CGSize.init(width: SCREEN_WIDTH*3, height: SCREEN_HEIGH)
        scrollView.backgroundColor = UIColor.lightGray

        self.view.addSubview(scrollView)
        
        
        let tableHeaderView = UIView()
        tableHeaderView.frame = CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: 300)
        tableHeaderView.backgroundColor = UIColor.red
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRect.init(x: 0, y: 300, width: SCREEN_WIDTH, height: self.view.frame.height-400)
        tableView.backgroundColor = UIColor.gray
        tableView.tableHeaderView = tableHeaderView
        tableView.tableFooterView = UIView()
        self.view.addSubview(tableView)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        debugPrint(scrollView.contentOffset.y)
        if scrollView.contentOffset.y>0 && scrollView.contentOffset.y<300 {
            UIView.animate(withDuration: 1, animations: {
                self.tableView.frame = CGRect.init(x: 0, y: kTopHeight, width: SCREEN_WIDTH, height: self.view.frame.height)
            }) { (bool) in
                
            }
        }
        
        
        
        
        
        
    }
    

}
