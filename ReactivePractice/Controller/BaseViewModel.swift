//
//  BaseViewModel.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/28.
//

import Combine

class BaseViewModel {
    var subscriber: Set<AnyCancellable> = .init()
    
    init() {
        subscriber = .init()
    }
}
