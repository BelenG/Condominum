//
//  VisitListTableViewCell.swift
//  Condominum
//
//  Created by leonsita on 10/19/19.
//  Copyright © 2019 leonsita. All rights reserved.
//

import UIKit


class VisitListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var labelUILabel: UILabel!
    @IBOutlet weak var imageUIImage: UIImageView!
    @IBOutlet weak var dateUILabel: UILabel!
    
    override func awakeFromNib() {
        imageUIImage.layer.cornerRadius = imageUIImage.bounds.height / 2
        imageUIImage.clipsToBounds = true
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
