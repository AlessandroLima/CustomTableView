import UIKit

protocol CeATableViewDataSourceProtocol {
    func numberOfRows() -> Int
    func titleForDataSource() -> String?
    func cellForRow(tableView:UITableView,_ row: Int) -> UITableViewCell
}

extension CeATableViewDataSourceProtocol {
    func titleForDataSource() -> String? {
        return nil
    }
    
    func heightForRow(tableView:UITableView) -> CGFloat? {
        return nil
    }
}
