//
//  RegistrationNameTableViewCell.swift
//  Demo
//
//  Created by 宮岡 昂 on 2016/10/14.
//  Copyright © 2016年 Fenrir Inc. All rights reserved.
//

import UIKit

class RegistrationNameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
