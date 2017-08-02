//
//  CustomTableViewCell.swift
//  Ness Coding Test
//
//  Created by Vignan Sankati on 8/2/17.
//  Copyright © 2017 Vignan. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var usernameLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
