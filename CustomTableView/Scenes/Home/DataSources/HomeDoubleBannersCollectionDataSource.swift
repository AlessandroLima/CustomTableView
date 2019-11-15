//
//  HomeDoubleBannersCollectionDataSource.swift
//  CustomTableView
//
//  Created by Resource on 13/11/19.
//  Copyright © 2019 Resource. All rights reserved.
//

import UIKit

struct HomeDoubleBannersCollectionDataSource: CeATableViewDataSourceProtocol {
    
    var doubleBanners: [(image:String, name:String)]

    func registerTableViewCel(tableView: UITableView){
        let tableViewCell = UINib(nibName: "DoubleBannerCollectionTableViewCell", bundle: nil)
        tableView.register(tableViewCell, forCellReuseIdentifier: "doubleBannerCollectionCell")
    }
    
    func numberOfRows() -> Int {
        return 1
    }
    
    func cellForRow(tableView: UITableView, _ row: Int) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "doubleBannerCollectionCell") as! DoubleBannerCollectionTableViewCell
        
        cell.setup(banners: doubleBanners, row: row)
        
        return cell
    }
    
    func titleForDataSource() -> String? {
        return nil
    }
    
}

