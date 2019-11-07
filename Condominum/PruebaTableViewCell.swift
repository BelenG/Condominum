//
//  PruebaTableViewCell.swift
//  Condominum
//
//  Created by leonsita on 10/23/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import UIKit

class PruebaTableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameUILabel: UILabel!
    @IBOutlet weak var imageUIImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
