//
//  AccountModel.swift
//  Demo
//
//  Created by 宮岡 昂 on 2016/11/04.
//  Copyright © 2016年 Fenrir Inc. All rights reserved.
//

import Foundation
import RealmSwift

class AccountModel: Object {
    dynamic var accountModelId : Int = 0 // ユニークにするためのID
    dynamic var username = "" // ユーザー名
    dynamic var service = "" // サービス
    dynamic var genre = "" // サービスのジャンル

    dynamic var userId = "" // ユーザーID
    dynamic var password = "" // パスワード
    dynamic var serviceURL = "" // サービスURL
    dynamic var startDate = "" // 開始日
    dynamic var endDate = "" // 終了日
    dynamic var notes = "" // メモ
//    override static func primaryKey() -> String? {
//        return "id"
//    }

}
