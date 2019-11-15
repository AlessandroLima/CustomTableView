//
//  HomeCategoryDataSource.swift
//  SpecialTableView
//
//  Created by Cissoto on 06/11/19.
//  Copyright © 2019 Cissoto. All rights reserved.
//

import UIKit

struct HomeCategoryDataSource: CeATableViewDataSourceProtocol {
    var categories: [String]
    
    func numberOfRows() -> Int {
        return categories.count
    }
    
    func cellForRow(tableView:UITableView, _ row: Int) -> UITableViewCell{
        let cell = UITableViewCell()
        cell.textLabel?.text = categories[row]
        
        return cell
    }
    
    func titleForDataSource() -> String? {
        return "Categorias"
    }
}
