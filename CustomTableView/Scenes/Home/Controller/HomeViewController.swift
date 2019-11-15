//
//  ViewController.swift
//  SpecialTableView
//
//  Created by Cissoto on 06/11/19.
//  Copyright © 2019 Cissoto. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    
    @IBOutlet weak var ceaTableView: CeATableView!
    
    let homeBanners = HomeBannersDataSource(banners: ["banner", "banner", "banner"])
    let homeCategory = HomeCategoryDataSource(categories: ["Teste 1", "Teste 2", "Teste 3"])
    let homeOrders = HomeOrdersDataSource(order: [(title: "Casa", description: "Rua Xpto"),
                                                  (title: "Casa do ale", description: "Rua Xpto 2"),
                                                  (title: "Casa do Helio", description: "Rua Xpto 3"),
                                                  (title: "Casa do Cissoto", description: "Rua Xpto 4")])
    let homeDoubleBanners = HomeDoubleBannersDataSource(doubleBanners: [
        (bannerLeft: "bannerLeft", bannerRight: "bannerRight"),
        (bannerLeft: "bannerLeft", bannerRight: "bannerRight"),
        (bannerLeft: "bannerLeft", bannerRight: "bannerRight")
    ])
    
    let homeDoubleBannersCollection = HomeDoubleBannersCollectionDataSource(doubleBanners: [
    (image:"bannerLeft",name:"masculino"),
    (image:"bannerRight",name:"feminino"),
    (image:"bannerLeft",name:"infantil"),
    (image:"bannerRight",name:"eletrônicos"),
    (image:"bannerLeft",name:"beleza"),
    (image:"bannerRight",name:"acessórios")
    ])
    
    let homeText = HomeTextDataSource(texts: ["Bacon ipsum dolor amet porchetta corned beef ham hock meatloaf sausage. Pork ham ribeye jerky, strip steak jowl venison sausage cow chicken shoulder drumstick porchetta ground round short loin. Picanha frankfurter capicola corned beef flank. Pig ball tip ham hock shoulder tenderloin. Kevin t-bone turducken pork belly corned beef bresaola pork ham frankfurter drumstick buffalo brisket chuck. Pastrami kielbasa cupim frankfurter chicken, alcatra tongue beef ribs shankle."])
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        ceaTableView.dataSources = [homeBanners, homeDoubleBannersCollection, homeDoubleBanners, homeText]
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.view.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func registerCells(){
        homeDoubleBannersCollection.registerTableViewCel(tableView: ceaTableView)
        homeBanners.registerTableViewCel(tableView: ceaTableView)
        homeText.registerTableViewCel(tableView: ceaTableView)
        homeDoubleBanners.registerTableViewCel(tableView: ceaTableView)
    }
}

