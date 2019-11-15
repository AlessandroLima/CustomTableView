//
//  CeATableView.swift
//  SpecialTableView
//
//  Created by Cissoto on 06/11/19.
//  Copyright © 2019 Cissoto. All rights reserved.
//

import UIKit

class CeATableView: UITableView {
    var dataSources = [CeATableViewDataSourceProtocol]() {
        didSet { self.reloadData() }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.dataSource = self
        self.delegate = self
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        self.dataSource = self
        self.delegate = self
    }
    
    convenience init(dataSources: [CeATableViewDataSourceProtocol]) {
        self.init(frame: .zero)
        self.dataSources = dataSources
        self.dataSource = self
        self.delegate = self
    }
}

extension CeATableView: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataSources.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSources[section].numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return dataSources[indexPath.section].cellForRow(tableView: tableView,  indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dataSources[section].titleForDataSource()
    }
}
