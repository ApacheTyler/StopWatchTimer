//
//  SavedTimeTableViewCell.swift
//  StopWatchTimer
//
//  Created by Tyler Freeman on 8/13/16.
//  Copyright © 2016 Tyler Freeman. All rights reserved.
//

import UIKit

class SavedTimeTableViewCell: UITableViewCell {

    @IBOutlet weak var SavedTimeTitleLabel: UILabel!
    @IBOutlet weak var SavedTimeDateSavedLabel: UILabel!
    @IBOutlet weak var SavedTimeFormattedTimeLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.SavedTimeTitleLabel.adjustsFontSizeToFitWidth = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
