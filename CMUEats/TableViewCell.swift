//
//  TableViewCell.swift
//  CMUEats
//
//  Created by Noah Goetz on 10/13/14.
//  Copyright (c) 2014 Noah Goetz. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var name = "";
    var location = "";
    var isOpen :Bool = true;
    var nextTime :timeDiff = (0, 0 , 0);
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var nextTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        nameLabel.text = self.name
        locationLabel.text = self.location
        var (d, h, m) = nextTime
        if (self.isOpen) {
            self.backgroundColor = UIColor.greenColor()
            if (d == 0 && h == 0){
                nextTimeLabel.text = "Closes in " + String(m) + " minutes"
            } else {
                nextTimeLabel.text = "Closes in " + String(d*24 + h) + " hours"
            }

        } else {
            self.backgroundColor = UIColor.redColor()
            if (d <= 0 && h <= 0){
                nextTimeLabel.text = "Opens in " + String(m) + " minutes"
            } else {
                nextTimeLabel.text = "Opens in " + String(d*24 + h) + " hours"
            }

        }
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
