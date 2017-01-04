//
//  SelectionCell.swift
//  Demo
//
//  Created by 宮岡 昂 on 2016/11/17.
//  Copyright © 2016年 Fenrir Inc. All rights reserved.
//

import UIKit

class SelectionCell: UITableViewCell {

    @IBOutlet weak var selectionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
