//
//  RegistrationInputAndSelectionCell.swift
//  Demo
//
//  Created by 宮岡 昂 on 2016/11/17.
//  Copyright © 2016年 Fenrir Inc. All rights reserved.
//

import UIKit

class RegistrationInputAndSelectionCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var selectionButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
