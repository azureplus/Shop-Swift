//
//  SortMainCell.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class SortMainCell: BasicTableCell {

    private lazy var nameLabel: UILabel = {
        let nameLabel: UILabel = UILabel()
        nameLabel.text = "asdasd"
        return nameLabel
    }()
    
    override func initUI() {
        self.contentView.addSubview(self.nameLabel)
    }

}
