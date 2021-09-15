//
//  Coordinator.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/15.
//

import UIKit

class Coordinator {
    func start(window: UIWindow, rootViewController: UIViewController) {
        let rootViewController = UINavigationController(rootViewController: StockListController())
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
}
