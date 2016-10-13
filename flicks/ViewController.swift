//
//  ViewController.swift
//  flicks
//
//  Created by Steve Kim on 10/12/16.
//  Copyright © 2016 Steve Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var moviesTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        moviesTableView.rowHeight = 100.0
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView .dequeueReusableCellWithIdentifier("com.steve.protocell") as! MyCell
        cell.myCustomLabel.text = "Row \(indexPath.row)"
        return cell
    }
    
}

class MyCell: UITableViewCell {
    @IBOutlet weak var myCustomLabel: UILabel!
    
}