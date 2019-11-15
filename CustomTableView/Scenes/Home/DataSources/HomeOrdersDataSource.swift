//
//  HomeOrdersDataSource.swift
//  SpecialTableView
//
//  Created by Cissoto on 06/11/19.
//  Copyright © 2019 Cissoto. All rights reserved.
//

import UIKit

typealias Order = (title: String, description: String)

struct HomeOrdersDataSource: CeATableViewDataSourceProtocol {
    var order: [Order]
    
    func numberOfRows() -> Int {
        return order.count
    }
    
    func cellForRow(tableView:UITableView,_ row: Int) -> UITableViewCell{
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = order[row].title
        cell.detailTextLabel?.text = order[row].description
        
        return cell
    }
    
    func titleForDataSource() -> String? {
        return "Meus Pedidos"
    }
}
