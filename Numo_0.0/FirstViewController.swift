//
//  FirstViewController.swift
//  Numo_0.0
//
//  Created by Kathryn Manning on 4/5/15.
//  Copyright (c) 2015 kathrynmanning. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodItemLogManager.foodItems.count
    }
    //build each cell, this method gets called ^ many times
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        
        cell.textLabel?.text = foodItemLogManager.foodItems[indexPath.row].name
        cell.detailTextLabel?.text = "\(foodItemLogManager.foodItems[indexPath.row].amount)"
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

