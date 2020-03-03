//
//  CartListView.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class CartListView: BasicView {
    
    // 列表
    private lazy var list: UITableView = {
        let list: UITableView = UITableView.init(frame: ({
            let height = self.height - self.bottomView.height
            return CGRect(x: 0, y: 0, width: self.width, height: height)
        })(), style: UITableView.Style.plain)
        list.backgroundColor = kDefaultBackGroundColor
        list.delegate = self
        list.dataSource = self
        list.lineAll()
        list.lineHide()
        list.showsVerticalScrollIndicator = false
        list.showsHorizontalScrollIndicator = false
        return list
    }()
    
    // 0: 普通  1: 编辑
    var listEnum: Int = 0 {
        willSet {
            self.list.reloadData()
            self.bottomView.listEnum = newValue
        }
    }
    
    // 底部
    private lazy var bottomView: CartListBottom = {
        let bottomView: CartListBottom = CartListBottom.loadCode(frame: ({
            let height = countcoordinatesX(designWidth: 100)
            let top = self.height - height
            return CGRect.init(x: 0, y: top, width: CGFloat(kScreenWidth), height: height)
        })()) as! CartListBottom
        return bottomView
    }()

    override func initUI() {
        self.addSubview(self.list)
        self.addSubview(self.bottomView)
    }

}

extension CartListView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CartListCell = CartListCell.loadCode(table: tableView) as! CartListCell
        cell.listEnum = self.listEnum
        return cell
    }
    
}

extension CartListView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return countcoordinatesX(designWidth: 200)
    }
    
}

