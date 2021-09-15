//
//  Coordinator.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/15.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController? {get set}
    func start()
}

/*
class Coordinator {
    func start(window: UIWindow, rootViewController: UIViewController) {
        let rootViewController = UINavigationController(rootViewController: StockListController())
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
}
*/
