//
//  UserNameModel.swift
//  Demo
//
//  Created by 宮岡 昂 on 2016/10/20.
//  Copyright © 2016年 Fenrir Inc. All rights reserved.
//

import Foundation
import RealmSwift

class UserNameModel: Object {
    dynamic var userNameModelId : Int = 0 // ユニークにするためのID
    dynamic var username = "" // ユーザー名

}
