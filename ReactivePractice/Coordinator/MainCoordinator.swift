//
//  MainController.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/15.
//

import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    func start() {
        let rootViewController = StockListController()
        navigationController?.setViewControllers([rootViewController], animated: false)
    }
}
