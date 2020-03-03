//
//  SortMainView.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class SortMainView: BasicView {

    private lazy var list: UITableView = {
        let list: UITableView = UITableView.init(frame: self.bounds, style: UITableView.Style.plain)
        list.backgroundColor = UIColor.yellow
        list.lineHide()
        list.lineAll()
        list.delegate = self
        list.dataSource = self
        return list
    }()
    
    override func initUI() {
        self.addSubview(self.list)
    }
    
}

extension SortMainView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SortMainCell = SortMainCell.loadCode(table: tableView) as! SortMainCell
        return cell
    }
    
}


extension SortMainView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.width / 5 * 2
    }
    
}
