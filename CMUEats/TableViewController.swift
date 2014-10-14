//
//  TableViewController.swift
//  CMUEats
//
//  Created by Noah Goetz on 10/13/14.
//  Copyright (c) 2014 Noah Goetz. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UITableViewDataSource {

    var eateries : [Eatery] = Array<Eatery>([      Eatery(_name:"Asiana",
        _location: "Newell Simon",
        _openHours: Array<time>(
            [(Monday,10,30),
                (Tuesday,10,30),
                (Wednesday,10,30),
                (Thursday,10,30),
                (Friday,10,30),
                (Saturday,10,30)]),
        _closeHours: Array<time>(
            [(Monday,19,30),
                (Tuesday,19,30),
                (Wednesday,19,30),
                (Thursday,19,30),
                (Friday,19,30),
                (Saturday,19,30)])),
        Eatery(_name:"Carnegie Mellon Café",
            _location: "Resnik",
            _openHours: Array<time>(
                [(Monday,    7, 30),
                    (Tuesday,    7, 30),
                    (Wednesday,  7, 30),
                    (Thursday,   7, 30),
                    (Friday,     7, 30),
                    (Saturday,   8,  0),
                    (Sunday,     8,  0)]),
            _closeHours: Array<time>(
                [(Monday,    2,  0),
                    (Tuesday,    2,  0),
                    (Wednesday,  2,  0),
                    (Thursday,   2,  0),
                    (Friday,     2,  0),
                    (Saturday,   2,  0),
                    (Sunday,     2,  0)])),
        Eatery(_name:"El Gallo de Oro",
            _location: "UC",
            _openHours: Array<time>(
                [(Monday,    10, 30),
                    (Tuesday,    10, 30),
                    (Wednesday,  10, 30),
                    (Thursday,   10, 30),
                    (Friday,     10, 30),
                    (Saturday,   10, 30),
                    (Sunday,     10, 30)]),
            _closeHours: Array<time>(
                [(Monday,    22,  0),
                    (Tuesday,    22,  0),
                    (Wednesday,  22,  0),
                    (Thursday,   22,  0),
                    (Friday,     22,  0),
                    (Saturday,   22,  0),
                    (Sunday,     22,  0)])),
        Eatery(_name:"Entropy",
            _location: "UC",
            _openHours: Array<time>(
                [(Monday,     7, 30),
                    (Tuesday,     7, 30),
                    (Wednesday,   7, 30),
                    (Thursday,    7, 30),
                    (Friday,      7, 30),
                    (Saturday,   10,  0),
                    (Sunday,     10,  0)]),
            _closeHours: Array<time>(
                [(Monday,    3,  0),
                    (Tuesday,    3,  0),
                    (Wednesday,  3,  0),
                    (Thursday,   3,  0),
                    (Friday,     3,  0),
                    (Saturday,   1,  0),
                    (Sunday,     1,  0)])),
        Eatery(_name:"The Exchange",
            _location: "Tepper",
            _openHours: Array<time>(
                [(Monday,     8,  0),
                    (Tuesday,     8,  0),
                    (Wednesday,   8,  0),
                    (Thursday,    8,  0),
                    (Friday,      8,  0),
                    (Saturday,    9,  30)]),
            _closeHours: Array<time>(
                [(Monday,    20, 30),
                    (Tuesday,    20, 30),
                    (Wednesday,  20, 30),
                    (Thursday,   20, 30),
                    (Friday,     18,  0),
                    (Saturday,   14, 30)])),
        Eatery(_name:"Gingers Express",
            _location: "Baker Hall",
            _openHours: Array<time>(
                [(Monday,     8,  0),
                    (Tuesday,     8,  0),
                    (Wednesday,   8,  0),
                    (Thursday,    8,  0),
                    (Friday,      8,  0)]),
            _closeHours: Array<time>(
                [(Monday,    16,  0),
                    (Tuesday,    16,  0),
                    (Wednesday,  16,  0),
                    (Thursday,   16,  0),
                    (Friday,     16,  0)])),
        Eatery(_name:"Heinz Café",
            _location: "Hamburg Hall",
            _openHours: Array<time>(
                [(Monday,     8, 30),
                    (Tuesday,     8, 30),
                    (Wednesday,   8, 30),
                    (Thursday,    8, 30),
                    (Friday,      8, 30)]),
            _closeHours: Array<time>(
                [(Monday,    18,  0),
                    (Tuesday,    18,  0),
                    (Wednesday,  18,  0),
                    (Thursday,   18,  0),
                    (Friday,     14,  0)])),
        Eatery(_name:"La Prima Espresso",
            _location: "Wean Hall",
            _openHours: Array<time>(
                [(Monday,     8,  0),
                    (Tuesday,     8,  0),
                    (Wednesday,   8,  0),
                    (Thursday,    8,  0),
                    (Friday,      8,  0)]),
            _closeHours: Array<time>(
                [(Monday,    18,  0),
                    (Tuesday,    18,  0),
                    (Wednesday,  18,  0),
                    (Thursday,   18,  0),
                    (Friday,     16,  0)])),
        Eatery(_name:"Maggie Murph Café",
            _location: "Hunt Library",
            _openHours: Array<time>(
                [(Sunday,     12,  0),
                    (Saturday,    10,  0)]),
            _closeHours: Array<time>(
                [(Friday,    21,  0),
                    (Saturday,   17,  0)])),
        Eatery(_name:"City Grill",
            _location: "2nd Floor UC",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Tuesday,     11,  0),
                    (Wednesday,   11,  0),
                    (Thursday,    11,  0),
                    (Friday,      11,  0)]),
            _closeHours: Array<time>(
                [(Monday,    20,  0),
                    (Tuesday,    20,  0),
                    (Wednesday,  20,  0),
                    (Thursday,   20,  0),
                    (Friday,     20,  0)])),
        Eatery(_name:"Pasta Villaggio",
            _location: "2nd Floor UC",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Tuesday,     11,  0),
                    (Wednesday,   11,  0),
                    (Thursday,    11,  0),
                    (Friday,      11,  0)]),
            _closeHours: Array<time>(
                [(Monday,    20,  0),
                    (Tuesday,    20,  0),
                    (Wednesday,  20,  0),
                    (Thursday,   20,  0),
                    (Friday,     20,  0)])),
        Eatery(_name:"Rice Bowl",
            _location: "2nd Floor UC",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Tuesday,     11,  0),
                    (Wednesday,   11,  0),
                    (Thursday,    11,  0),
                    (Friday,      11,  0)]),
            _closeHours: Array<time>(
                [(Monday,    20,  0),
                    (Tuesday,    20,  0),
                    (Wednesday,  20,  0),
                    (Thursday,   20,  0),
                    (Friday,     20,  0)])),
        Eatery(_name:"Evgefstos",
            _location: "2nd Floor UC",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Tuesday,     11,  0),
                    (Wednesday,   11,  0),
                    (Thursday,    11,  0),
                    (Friday,      11,  0)]),
            _closeHours: Array<time>(
                [(Monday,    20,  0),
                    (Tuesday,    20,  0),
                    (Wednesday,  20,  0),
                    (Thursday,   20,  0),
                    (Friday,     20,  0)])),
        Eatery(_name:"Spinning Salads",
            _location: "2nd Floor UC",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Tuesday,     11,  0),
                    (Wednesday,   11,  0),
                    (Thursday,    11,  0),
                    (Friday,      11,  0)]),
            _closeHours: Array<time>(
                [(Monday,    20,  0),
                    (Tuesday,    20,  0),
                    (Wednesday,  20,  0),
                    (Thursday,   20,  0),
                    (Friday,     20,  0)])),
        Eatery(_name:"Creperie",
            _location: "2nd Floor UC",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Tuesday,     11,  0),
                    (Wednesday,   11,  0),
                    (Thursday,    11,  0),
                    (Friday,      11,  0)]),
            _closeHours: Array<time>(
                [(Monday,    16,  0),
                    (Tuesday,    16,  0),
                    (Wednesday,  16,  0),
                    (Thursday,   16,  0),
                    (Friday,     16,  0)])),
        Eatery(_name:"Downtown Deli",
            _location: "2nd Floor UC",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Tuesday,     11,  0),
                    (Wednesday,   11,  0),
                    (Thursday,    11,  0),
                    (Friday,      11,  0)]),
            _closeHours: Array<time>(
                [(Monday,    16,  0),
                    (Tuesday,    16,  0),
                    (Wednesday,  16,  0),
                    (Thursday,   16,  0),
                    (Friday,     16,  0)])),
        Eatery(_name:"Mitchell's Mainstreet",
            _location: "2nd Floor UC",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Tuesday,     11,  0),
                    (Wednesday,   11,  0),
                    (Thursday,    11,  0),
                    (Friday,      11,  0)]),
            _closeHours: Array<time>(
                [(Monday,    15,  0),
                    (Tuesday,    15,  0),
                    (Wednesday,  15,  0),
                    (Thursday,   15,  0),
                    (Friday,     15,  0)])),
        Eatery(_name:"The Pomegranate",
            _location: "2nd Floor UC",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Tuesday,     11,  0),
                    (Wednesday,   11,  0),
                    (Thursday,    11,  0),
                    (Friday,      11,  0)]),
            _closeHours: Array<time>(
                [(Monday,    20,  0),
                    (Tuesday,    20,  0),
                    (Wednesday,  20,  0),
                    (Thursday,   20,  0),
                    (Friday,     14, 30)])),
        Eatery(_name:"Nakama Express",
            _location: "Resnik",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Monday,      17,  0),
                    (Tuesday,     11,  0),
                    (Tuesday,     17,  0),
                    (Wednesday,   11,  0),
                    (Wednesday,   17,  0),
                    (Thursday,    11,  0),
                    (Thursday,     17,  0),
                    (Friday,      11,  0),
                    (Friday,      17,  0),
                    (Saturday,    17,  0),
                    (Sunday,      17,  0)]),
            _closeHours: Array<time>(
                [(Monday,    14, 30),
                    (Monday,     21,  0),
                    (Tuesday,    14, 30),
                    (Tuesday,    21,  0),
                    (Wednesday,  14, 30),
                    (Wednesday,  21,  0),
                    (Thursday,   14, 30),
                    (Thursday,   21,  0),
                    (Friday,     14, 30),
                    (Friday,     21,  0),
                    (Saturday,   21,  0),
                    (Sunday,     21,  0)])),
        Eatery(_name:"Soup & Salad",
            _location: "Resnik",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Monday,      17,  0),
                    (Tuesday,     11,  0),
                    (Tuesday,     17,  0),
                    (Wednesday,   11,  0),
                    (Wednesday,   17,  0),
                    (Thursday,    11,  0),
                    (Thursday,     17,  0),
                    (Friday,      11,  0),
                    (Friday,      17,  0),
                    (Saturday,    17,  0),
                    (Sunday,      17,  0)]),
            _closeHours: Array<time>(
                [(Monday,    14, 30),
                    (Monday,     21,  0),
                    (Tuesday,    14, 30),
                    (Tuesday,    21,  0),
                    (Wednesday,  14, 30),
                    (Wednesday,  21,  0),
                    (Thursday,   14, 30),
                    (Thursday,   21,  0),
                    (Friday,     14, 30),
                    (Friday,     21,  0),
                    (Saturday,   21,  0),
                    (Sunday,     21,  0)])),
        Eatery(_name:"Spice it Up Grill",
            _location: "Resnik",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Monday,      17,  0),
                    (Tuesday,     11,  0),
                    (Tuesday,     17,  0),
                    (Wednesday,   11,  0),
                    (Wednesday,   17,  0),
                    (Thursday,    11,  0),
                    (Thursday,     17,  0),
                    (Friday,      11,  0),
                    (Friday,      17,  0),
                    (Saturday,    17,  0),
                    (Sunday,      17,  0)]),
            _closeHours: Array<time>(
                [(Monday,    14, 30),
                    (Monday,     21,  0),
                    (Tuesday,    14, 30),
                    (Tuesday,    21,  0),
                    (Wednesday,  14, 30),
                    (Wednesday,  21,  0),
                    (Thursday,   14, 30),
                    (Thursday,   21,  0),
                    (Friday,     14, 30),
                    (Friday,     21,  0),
                    (Saturday,   21,  0),
                    (Sunday,     21,  0)])),
        Eatery(_name:"Stackers Fresh Subs",
            _location: "Resnik",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Monday,      17,  0),
                    (Tuesday,     11,  0),
                    (Tuesday,     17,  0),
                    (Wednesday,   11,  0),
                    (Wednesday,   17,  0),
                    (Thursday,    11,  0),
                    (Thursday,     17,  0),
                    (Friday,      11,  0),
                    (Friday,      17,  0),
                    (Saturday,    17,  0),
                    (Sunday,      17,  0)]),
            _closeHours: Array<time>(
                [(Monday,    14, 30),
                    (Monday,     21,  0),
                    (Tuesday,    14, 30),
                    (Tuesday,    21,  0),
                    (Wednesday,  14, 30),
                    (Wednesday,  21,  0),
                    (Thursday,   14, 30),
                    (Thursday,   21,  0),
                    (Friday,     14, 30),
                    (Friday,     21,  0),
                    (Saturday,   21,  0),
                    (Sunday,     21,  0)])),
        Eatery(_name:"Take Comfort",
            _location: "Resnik",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Monday,      17,  0),
                    (Tuesday,     11,  0),
                    (Tuesday,     17,  0),
                    (Wednesday,   11,  0),
                    (Wednesday,   17,  0),
                    (Thursday,    11,  0),
                    (Thursday,     17,  0),
                    (Friday,      11,  0),
                    (Friday,      17,  0),
                    (Saturday,    17,  0),
                    (Sunday,      17,  0)]),
            _closeHours: Array<time>(
                [(Monday,    14, 30),
                    (Monday,     21,  0),
                    (Tuesday,    14, 30),
                    (Tuesday,    21,  0),
                    (Wednesday,  14, 30),
                    (Wednesday,  21,  0),
                    (Thursday,   14, 30),
                    (Thursday,   21,  0),
                    (Friday,     14, 30),
                    (Friday,     21,  0),
                    (Saturday,   21,  0),
                    (Sunday,     21,  0)])),
        Eatery(_name:"Taste of India",
            _location: "Resnik",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Monday,      17,  0),
                    (Tuesday,     11,  0),
                    (Tuesday,     17,  0),
                    (Wednesday,   11,  0),
                    (Wednesday,   17,  0),
                    (Thursday,    11,  0),
                    (Thursday,     17,  0),
                    (Friday,      11,  0),
                    (Friday,      17,  0),
                    (Saturday,    17,  0),
                    (Sunday,      17,  0)]),
            _closeHours: Array<time>(
                [(Monday,    14,  0),
                    (Monday,     21,  0),
                    (Tuesday,    14,  0),
                    (Tuesday,    21,  0),
                    (Wednesday,  14,  0),
                    (Wednesday,  21,  0),
                    (Thursday,   14,  0),
                    (Thursday,   21,  0),
                    (Friday,     14,  0),
                    (Friday,     21,  0),
                    (Saturday,   21,  0),
                    (Sunday,     21,  0)])),
        Eatery(_name:"Resnik Café Express",
            _location: "Resnik",
            _openHours: Array<time>(
                [(Saturday,    11,  0),
                    (Sunday,      11,  0)]),
            _closeHours: Array<time>(
                [(Saturday,   13,  30),
                    (Sunday,     13,  30)])),
        Eatery(_name:"Schatz Dining Room",
            _location: "2nd Floor UC",
            _openHours: Array<time>(
                [(Monday,     7, 30),
                    (Tuesday,     7, 30),
                    (Wednesday,   7, 30),
                    (Thursday,    7, 30),
                    (Friday,      7, 30),
                    (Monday,     11, 30),
                    (Tuesday,    11, 30),
                    (Wednesday,  11, 30),
                    (Thursday,   11, 30),
                    (Friday,     11, 30),
                    (Monday,     17,  0),
                    (Tuesday,    17,  0),
                    (Wednesday,  17,  0),
                    (Thursday,   17,  0),
                    (Saturday,   10, 30),
                    (Sunday,     10, 30)]),
            _closeHours: Array<time>(
                [(Monday,    10, 30),
                    (Tuesday,    10, 30),
                    (Wednesday,  10, 30),
                    (Thursday,   10, 30),
                    (Friday,     10, 30),
                    (Monday,     14,  0),
                    (Tuesday,    14,  0),
                    (Wednesday,  14,  0),
                    (Thursday,   14,  0),
                    (Friday,     14,  0),
                    (Monday,     20,  0),
                    (Tuesday,    20,  0),
                    (Wednesday,  20,  0),
                    (Thursday,   20,  0),
                    (Saturday,   14, 30),
                    (Sunday,     14, 30)])),
        Eatery(_name:"SEIber Café",
            _location: "Software Engineering Institute",
            _openHours: Array<time>(
                [(Monday,     7, 30),
                    (Tuesday,     7, 30),
                    (Wednesday,   7, 30),
                    (Thursday,    7, 30),
                    (Friday,      7, 30)]),
            _closeHours: Array<time>(
                [(Monday,    15,  0),
                    (Tuesday,    15,  0),
                    (Wednesday,  15,  0),
                    (Thursday,   15,  0),
                    (Friday,     15,  0)])),
        Eatery(_name:"Skibo Café",
            _location: "2nd Floor UC",
            _openHours: Array<time>(
                [(Monday,     9,  0),
                    (Tuesday,     9,  0),
                    (Wednesday,   9,  0),
                    (Thursday,    9,  0),
                    (Friday,      9,  0),
                    (Saturday,    9,  0),
                    (Sunday,      9,  0)]),
            _closeHours: Array<time>(
                [(Monday,     2,  0),
                    (Tuesday,     2,  0),
                    (Wednesday,   2,  0),
                    (Thursday,    2,  0),
                    (Friday,      2,  0),
                    (Saturday,    2,  0),
                    (Sunday,      2,  0)])),
        Eatery(_name:"Stephanies",
            _location: "Mellon Institute",
            _openHours: Array<time>(
                [(Monday,     8,  0),
                    (Tuesday,     8,  0),
                    (Wednesday,   8,  0),
                    (Thursday,    8,  0),
                    (Friday,      8,  0)]),
            _closeHours: Array<time>(
                [(Monday,     14,  0),
                    (Tuesday,     14,  0),
                    (Wednesday,   14,  0),
                    (Thursday,    14,  0),
                    (Friday,      14,  0)])),
        Eatery(_name:"Tartans Pavilion",
            _location: "Resnik",
            _openHours: Array<time>(
                [(Monday,     11,  0),
                    (Tuesday,     11,  0),
                    (Wednesday,   11,  0),
                    (Thursday,    11,  0),
                    (Friday,      11,  0),
                    (Saturday,    17,  0),
                    (Sunday,      17,  0)]),
            _closeHours: Array<time>(
                [(Monday,     23,  0),
                    (Tuesday,     23,  0),
                    (Wednesday,   23,  0),
                    (Thursday,    23,  0),
                    (Friday,      23,  0),
                    (Saturday,    23,  0),
                    (Sunday,      23,  0)])),
        Eatery(_name:"Worlds of Flavor",
            _location: "Resnik",
            _openHours: Array<time>(
                [(Monday,     17,  0),
                    (Tuesday,     17,  0),
                    (Wednesday,   17,  0),
                    (Thursday,    17,  0),
                    (Sunday,      17,  0)]),
            _closeHours: Array<time>(
                [(Monday,     21,  0),
                    (Tuesday,     21,  0),
                    (Wednesday,   21,  0),
                    (Thursday,    21,  0),
                    (Sunday,      21,  0)])),
        Eatery(_name:"Tazza D'Oro",
            _location: "Gates",
            _openHours: Array<time>(
                [(Monday,     7,  0),
                    (Tuesday,     7,  0),
                    (Wednesday,   7,  0),
                    (Thursday,    7,  0),
                    (Friday,      7,  0)]),
            _closeHours: Array<time>(
                [(Monday,     19,  0),
                    (Tuesday,     19,  0),
                    (Wednesday,   19,  0),
                    (Thursday,    19,  0),
                    (Friday,      19,  0)])),
        Eatery(_name:"The Underground",
            _location: "Morewood",
            _openHours: Array<time>(
                [(Monday,     11, 30),
                    (Tuesday,     11, 30),
                    (Wednesday,   11, 30),
                    (Thursday,    11, 30),
                    (Friday,      11, 30),
                    (Saturday,    11, 30),
                    (Sunday,      11, 30)]),
            _closeHours: Array<time>(
                [(Monday,     0,  0),
                    (Tuesday,     0,  0),
                    (Wednesday,   0,  0),
                    (Thursday,    0,  0),
                    (Friday,      0,  0),
                    (Saturday,    0,  0),
                    (Sunday,      0,  0)])),
        Eatery(_name:"The Zebra Lounge",
            _location: "CFA",
            _openHours: Array<time>(
                [(Monday,     8,  0),
                    (Tuesday,     8,  0),
                    (Wednesday,   8,  0),
                    (Thursday,    8,  0),
                    (Friday,      8,  0)]),
            _closeHours: Array<time>(
                [(Monday,     17,  0),
                    (Tuesday,     17,  0),
                    (Wednesday,   17,  0),
                    (Thursday,    17,  0),
                    (Friday,      17,  0)]))])
    
    func refresh(){
        self.refreshControl?.endRefreshing()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.refreshControl = UIRefreshControl()
        self.refreshControl?.addTarget(self, action: "refresh", forControlEvents: UIControlEvents.ValueChanged)
        self.tableView.separatorColor = UIColor.blackColor()
        eateries.sort { (e1, e2) -> Bool in
            return e1.isOpen() && !(e2.isOpen())
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.eateries.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Eatery", forIndexPath: indexPath) as TableViewCell
        var eatery = self.eateries[indexPath.row]
        cell.name = eatery.name
        cell.location = eatery.location
        cell.isOpen = eatery.isOpen()
        cell.nextTime = eatery.isOpen() ? eatery.getTimeUntilNextClose() : eatery.getTimeUntilNextOpen()
        cell.awakeFromNib()
        return cell

    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView!, moveRowAtIndexPath fromIndexPath: NSIndexPath!, toIndexPath: NSIndexPath!) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView!, canMoveRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
