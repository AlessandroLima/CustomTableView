//
//  TextDataSource.swift
//  CustomTableView
//
//  Created by Resource on 11/11/19.
//  Copyright © 2019 Resource. All rights reserved.
//

import UIKit

struct HomeTextDataSource: CeATableViewDataSourceProtocol {
    
    var texts: [String]
    
    func registerTableViewCel(tableView: UITableView){
        let tableViewCell = UINib(nibName: "TextTableViewCell", bundle: nil)
        tableView.register(tableViewCell, forCellReuseIdentifier: "textBannerCell")
    }
    
    func numberOfRows() -> Int {
        return texts.count
    }
    
    func cellForRow(tableView: UITableView, _ row: Int) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "textBannerCell") as! TextTableViewCell
        
        cell.setup(with: texts[row])
        
        return cell
    }
    
    func titleForDataSource() -> String? {
        return nil
    }
    
}
