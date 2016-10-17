//
//  NameTableViewCell.swift
//  Demo
//
//  Created by 宮岡 昂 on 2016/10/14.
//  Copyright © 2016年 Fenrir Inc. All rights reserved.
//

import UIKit

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
