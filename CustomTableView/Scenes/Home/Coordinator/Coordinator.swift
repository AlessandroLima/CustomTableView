//
//  Coordinator.swift
//  CordinatorTest
//
//  Created by Alessandro Teixeira Lima on 04/11/19.
//  Copyright © 2019 Alessandro Teixeira Lima. All rights reserved.
//
import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
