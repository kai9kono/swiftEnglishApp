//
//  CourseCell.swift
//  EnglishApp
//
//  Created by Kai Kono on 6/22/19.
//  Copyright © 2019 Kai Kono. All rights reserved.
//

import UIKit

class CourseCell: UITableViewCell {

    @IBOutlet var courseName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
