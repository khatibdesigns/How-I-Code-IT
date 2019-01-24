//
//  MainTableViewCell.swift
//  Dynamic TableView Cell
//
//  Created by Khatib Designs on 1/24/19.
//  Copyright © 2019 Khatib Designs. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var MainTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
