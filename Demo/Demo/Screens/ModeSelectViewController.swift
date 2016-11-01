//
//  ModeSelectViewController.swift
//  Demo
//
//  Created by 宮岡 昂 on 2016/11/01.
//  Copyright © 2016年 Fenrir Inc. All rights reserved.
//

import UIKit

class ModeSelectViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var modeList = ["ユーザー", "サービス", "ジャンル"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Table view data source

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return modeList.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("ModeCell", forIndexPath: indexPath)
        cell.textLabel?.text = modeList[indexPath.row]

        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        dismissViewControllerAnimated(true) { 

        }
    }

}
