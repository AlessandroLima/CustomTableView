//
//  Extension+UIImage.swift
//  CustomTableView
//
//  Created by Resource on 12/11/19.
//  Copyright © 2019 Resource. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {

    func makeRounded() {

        self.layer.borderWidth = 2
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
