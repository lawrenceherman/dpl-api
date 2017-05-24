//
//  itemCell.swift
//  NationalArchive
//
//  Created by Lawrence Herman on 5/3/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    
    @IBOutlet weak var itemView: ItemView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
