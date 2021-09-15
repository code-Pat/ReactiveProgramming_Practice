//
//  CompositionRoot.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/15.
//

struct AppDependency {
    let coordinator: Coordinator
}

extension AppDependency {
    static func resolve() -> AppDependency {
        let coordinator: Coordinator = .init()
        
        return .init(coordinator: coordinator)
    }
}
