//
//  RegistrationTableViewController.swift
//  Demo
//
//  Created by 宮岡 昂 on 2016/10/14.
//  Copyright © 2016年 Fenrir Inc. All rights reserved.
//

import UIKit
import RealmSwift
import Repro

class RegistrationTableViewController: UITableViewController, UIPopoverPresentationControllerDelegate {

    let realmDB = UserNameModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let nameList = self.getAll()
        print(nameList)
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        Repro.track("RegistrationTableViewController", properties: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onCancelAction(sender: AnyObject) {
        // 閉じる
        dismissViewControllerAnimated(true, completion: nil)

    }
    
    @IBAction func onSaveAction(sender: AnyObject) {
        
        realmDB.id = 1
        realmDB.username = "namae"
        self.save()
        self.find()

        // 閉じる
        dismissViewControllerAnimated(true, completion: nil)

    }

    // Mark: - UIPopoverPresentationControllerDelegate

    func prepareForPopoverPresentation(popoverPresentationController: UIPopoverPresentationController) {
        popoverPresentationController.permittedArrowDirections = .Up
        popoverPresentationController.sourceView = self.view
        popoverPresentationController.sourceRect = CGRect(x: UIScreen.mainScreen().bounds.size.width - 30, y: 40, width: 0, height: 0)
    }

    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.None
    }

    // Mark: - Callback function for popover button.

    func presentPopover() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewControllerWithIdentifier("NameTableViewController")
        if let popoverContentController = viewController as? NameTableViewController {
            //            popoverContentController.view.backgroundColor = UIColor.lightGrayColor()

            // Set your popover size.
            popoverContentController.preferredContentSize = CGSize(width: 200, height: 300)

            // Set the presentation style to modal so that the above methods get called.
            popoverContentController.modalPresentationStyle = UIModalPresentationStyle.Popover

            // Set the popover presentation controller delegate so that the above methods get called.
            popoverContentController.popoverPresentationController!.delegate = self

            // Present the popover.
            self.presentViewController(popoverContentController, animated: true, completion: nil)
        }
    }

    // MARK: - Realm
    
//    func realmConnect() {
//        realmDB.id = 1;
//        realmDB.username = "namae";
//        self.save();
//        self.find();
//    }

    /**
     保存処理
     */
    func save() {
        do {
            let realm = try Realm()
            
            try realm.write {
                realm.add(self.realmDB)
            }
        } catch {
            
        }
    }
    
    func find() {
        if let realm = try? Realm() {
            let dataContent = realm.objects(UserNameModel)
            print(dataContent)
        }
    }
    
    func dataUpdate() {
        
        do {
            if let realm = try? Realm() {
                
                let data = realm.objects(UserNameModel).last!
                try realm.write {
                    data.username = "hirokazu"
                }
            }
        } catch {
            
        }
    }
    
    func deleate() {
        
        do {
            if let realm = try? Realm() {
                
                let data = realm.objects(UserNameModel).last!
                
                try realm.write {
                    realm.delete(data)
                }
            }
            
        } catch {
            
        }
    }

    /// データを全件取得する
    /// - returns: ReceivableModelのコレクション
    func getAll() -> Results<UserNameModel>? {
        if let realm = try? Realm() {
            return realm.objects(UserNameModel).sorted("id")
        } else {
            return nil
        }
    }

    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("RegistrationNameCell", forIndexPath: indexPath)
        if let nameCell = cell as? RegistrationNameTableViewCell {
            nameCell.nameButton.addTarget(self, action: #selector(RegistrationTableViewController.presentPopover), forControlEvents: .TouchUpInside)
        }

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
