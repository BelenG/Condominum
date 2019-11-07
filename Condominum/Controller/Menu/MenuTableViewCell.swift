//
//  MenuTableViewCell.swift
//  Condominum
//
//  Created by leonsita on 10/17/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageCell: GradientAccess!
    @IBOutlet weak var labelCell: UILabel!
    
    
    
    
    override func awakeFromNib() {
        imageCell.layer.cornerRadius = 10
        imageCell.clipsToBounds = true
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
