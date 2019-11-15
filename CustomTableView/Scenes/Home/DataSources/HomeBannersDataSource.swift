import UIKit

struct HomeBannersDataSource: CeATableViewDataSourceProtocol {
    
    var banners: [String]
    
    func registerTableViewCel(tableView: UITableView){
        let tableViewCell = UINib(nibName: "BannerTableViewCell", bundle: nil)
        tableView.register(tableViewCell, forCellReuseIdentifier: "bannerCell")
    }
    
    func numberOfRows() -> Int {
        return banners.count
    }
    
    func cellForRow(tableView: UITableView, _ row: Int) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "bannerCell") as! BannerTableViewCell

        if let image = UIImage(named: self.banners[row]){
            cell.setup(with: image)
        }

        return cell
    }
    
    func titleForDataSource() -> String? {
        return nil
    }
    
//    func heightForRow() -> CGFloat? {
//        return 160.0
//    }
    
    
}
