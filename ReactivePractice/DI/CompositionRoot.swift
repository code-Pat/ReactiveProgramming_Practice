//
//  CompositionRoot.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/15.
//

struct AppDependency {
    let mainCoordinator: MainCoordinator
}

extension AppDependency {
    static func resolve() -> AppDependency {
        let mainCoordinator: MainCoordinator = .init()
        
        return .init(mainCoordinator: mainCoordinator)
    }
}
