//
//  BannerTableViewCell.swift
//  SpecialTableView
//
//  Created by Alessandro Teixeira Lima on 07/11/19.
//  Copyright © 2019 Cissoto. All rights reserved.
//

import UIKit

class BannerTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imgBanner: UIImageView!
    
    func setup(with image:UIImage){
        imgBanner?.image = image
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
