//
//  LightTableViewCell.swift
//  Alexa
//
//  Created by Ivan Ramirez on 9/6/18.
//  Copyright © 2018 ramcomw. All rights reserved.
//

import UIKit

class LightTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var roomImageView: UIImageView!
    @IBOutlet weak var roomNameLabel: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func lightSwitchFlipped(_ sender: Any) {
    }
    
}
