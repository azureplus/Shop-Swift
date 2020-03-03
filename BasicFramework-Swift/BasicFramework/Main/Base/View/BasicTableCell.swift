//
//  BasicTableCell.swift
//  BasicFramework
//
//  Created by kk on 2020/1/12.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

protocol BasicTableCellProtocol {
    
    /// 加载第一个NIB
    static func loadFirstNib(table: UITableView) -> BasicTableCell
    /// 加载最后一个nib
    static func loadLastNib(table: UITableView) -> BasicTableCell
    /// 加载指定xib
    static func loadNib(index: NSInteger, table: UITableView) -> BasicTableCell
    /// 获取XIB中cell个数
    static func getCells(table: UITableView) -> Array<Any>
    /// 从代码创建cell
    static func loadCode(table: UITableView) -> BasicTableCell
    /// 初始化UI
    func initUI()
    /// 获取高度
    static func getCellHeight(data: Any?) -> CGFloat
    
}

class BasicTableCell: UITableViewCell, BasicTableCellProtocol {

    
    /// 加载第一个NIB
    static func loadFirstNib(table: UITableView) -> BasicTableCell {
        let cell: BasicTableCell = self.loadNib(index: 0, table: table)
        return cell
    }
    /// 加载最后一个nib
    static func loadLastNib(table: UITableView) -> BasicTableCell {
        let cell: BasicTableCell = self.loadNib(index: self.getCells(table: table).count - 1, table: table)
        return cell
    }
    /// 加载指定xib
    static func loadNib(index: NSInteger, table: UITableView) -> BasicTableCell {
        var name: NSString = NSStringFromClass(self) as NSString
        name = name.replacingOccurrences(of: "\(kModuleName).", with: "") as NSString
        var cell: BasicTableCell? = table.dequeueReusableCell(withIdentifier: name as String) as? BasicTableCell
        if cell == nil {
            cell = Bundle.main.loadNibNamed(name as String, owner: nil, options: nil)?[index] as? BasicTableCell
            cell!.initUI()
        }
        return cell!
    }
    /// 获取XIB中cell个数
    static func getCells(table: UITableView) -> Array<Any> {
        var name: NSString = NSStringFromClass(self) as NSString
        name = name.replacingOccurrences(of: "\(kModuleName).", with: "") as NSString
        return Bundle.main.loadNibNamed(name as String, owner: nil, options: nil) ?? []
    }
    
    /// 从代码创建cell
    class func loadCode(table: UITableView) -> BasicTableCell {
        var name: NSString = NSStringFromClass(self) as NSString
        name = name.replacingOccurrences(of: "\(kModuleName).", with: "") as NSString
        var cell: BasicTableCell? = table.dequeueReusableCell(withIdentifier: name as String) as? BasicTableCell
        if cell == nil {
            cell = self.init()
            cell!.initUI()
        }
        return cell!
    }
    
    /// 初始化UI
    func initUI() {
        self.backgroundColor = kClearColor
        self.contentView.backgroundColor = kClearColor
    }
    
    /// 获取高度
    class func getCellHeight(data: Any?) -> CGFloat {
        return 0
    }
    

}
