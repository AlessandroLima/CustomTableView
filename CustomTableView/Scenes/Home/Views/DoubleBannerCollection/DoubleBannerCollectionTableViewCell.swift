//
//  DoubleBannerCollectionTableViewCell.swift
//  CustomTableView
//
//  Created by Resource on 13/11/19.
//  Copyright © 2019 Resource. All rights reserved.
//

import UIKit

class DoubleBannerCollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    var banners:[(image:String, name:String)] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setup(banners:[(image:String, name:String)], row:Int){
    
        setCollectionViewDataSourceDelegate(dataSourceDelegate: self, forRow: row)
        self.banners = banners
    
    }
    
    func setCollectionViewDataSourceDelegate(dataSourceDelegate: UICollectionViewDataSource & UICollectionViewDelegate, forRow row: Int) {
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        collectionView.tag = row
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        collectionView.register(UINib.init(nibName: "DoubleBannerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "collectionCell")
        
        return banners.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! DoubleBannerCollectionViewCell
        
        cell.imgBubble.image = UIImage(named: banners[indexPath.row].image)
        cell.lblBubble.text  = banners[indexPath.row].name
        
        cell.imgBubble.makeRounded()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("Item: \(banners[indexPath.row].name)")
    }
}

