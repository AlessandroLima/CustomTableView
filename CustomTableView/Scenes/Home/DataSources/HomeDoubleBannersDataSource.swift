//
//  HomeDoubleBannersDataSource.swift
//  CustomTableView
//
//  Created by Resource on 11/11/19.
//  Copyright © 2019 Resource. All rights reserved.
//

import UIKit

struct HomeDoubleBannersDataSource: CeATableViewDataSourceProtocol {
    
    var doubleBanners: [(bannerLeft:String, bannerRight:String)]

    
    func registerTableViewCel(tableView: UITableView){
        let tableViewCell = UINib(nibName: "DoubleBannerTableViewCell", bundle: nil)
        tableView.register(tableViewCell, forCellReuseIdentifier: "doubleBannerCell")
    }
    
    func numberOfRows() -> Int {
        return doubleBanners.count
    }
    
    func cellForRow(tableView: UITableView, _ row: Int) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "doubleBannerCell") as! DoubleBannerTableViewCell
        
        cell.setup(bannerLeft: doubleBanners[row].bannerLeft, bannerRight: doubleBanners[row].bannerRight, widthForCell: CGFloat(cell.frame.size.width / 2))
        
        return cell
    }
    
    func titleForDataSource() -> String? {
        return nil
    }
    
}
