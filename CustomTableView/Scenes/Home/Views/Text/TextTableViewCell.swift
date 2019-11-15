//
//  TextTableViewCell.swift
//  CustomTableView
//
//  Created by Resource on 11/11/19.
//  Copyright © 2019 Resource. All rights reserved.
//

import UIKit

class TextTableViewCell: UITableViewCell {

    @IBOutlet weak var lblFooter: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(with text:String){
        
        lblFooter.text = text
    }
    
}
