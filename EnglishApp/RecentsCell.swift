//
//  RecentsCell.swift
//  
//
//  Created by Kai Kono on 7/14/19.
//

import UIKit

class RecentsCell: UITableViewCell {

    @IBOutlet weak var recentLabel: UILabel!
    @IBOutlet weak var recentArrowImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
