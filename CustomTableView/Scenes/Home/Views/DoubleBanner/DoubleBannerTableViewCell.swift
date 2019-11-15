//
//  DoubleBannerTableViewCell.swift
//  CustomTableView
//
//  Created by Resource on 12/11/19.
//  Copyright © 2019 Resource. All rights reserved.
//

import UIKit

class DoubleBannerTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var bannerLeft: UIImageView!
    
    @IBOutlet weak var bannerRight: UIImageView!
    
    @IBOutlet weak var cellWidth: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setup(bannerLeft: String, bannerRight: String, widthForCell:CGFloat){
        self.bannerLeft.image = UIImage(named: bannerLeft)
        self.bannerRight.image = UIImage(named: bannerRight)
        self.cellWidth.constant = widthForCell
    }
    
}
