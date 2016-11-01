//
//  HomeTableViewController.swift
//  Demo
//
//  Created by 宮岡 昂 on 2016/10/14.
//  Copyright © 2016年 Fenrir Inc. All rights reserved.
//

import UIKit
import Repro

class HomeTableViewController: UITableViewController, UIPopoverPresentationControllerDelegate {

    /* The bar button item that will present the popover. */

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()

    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        Repro.track("HomeTableViewController", properties: nil)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Mark: - UIPopoverPresentationControllerDelegate

    func prepareForPopoverPresentation(popoverPresentationController: UIPopoverPresentationController) {
        popoverPresentationController.permittedArrowDirections = .Up
        popoverPresentationController.sourceView = self.view
        popoverPresentationController.sourceRect = CGRect(x: UIScreen.mainScreen().bounds.size.width/2, y: 0, width: 0, height: 0)
    }

    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.None
    }

    // Mark: - Callback function for popover button.

    @IBAction func presentPopover(sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewControllerWithIdentifier("ModeSelectViewController")
        if let popoverContentController = viewController as? ModeSelectViewController {
//            popoverContentController.view.backgroundColor = UIColor.lightGrayColor()

            // Set your popover size.
            popoverContentController.preferredContentSize = CGSize(width: 200, height: 129)

            // Set the presentation style to modal so that the above methods get called.
            popoverContentController.modalPresentationStyle = UIModalPresentationStyle.Popover

            // Set the popover presentation controller delegate so that the above methods get called.
            popoverContentController.popoverPresentationController!.delegate = self

            // Present the popover.
            self.presentViewController(popoverContentController, animated: true, completion: nil)
        }
    }
    

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


}
