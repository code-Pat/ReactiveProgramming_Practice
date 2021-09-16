//
//  StockUseCase.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/15.
//

import Foundation
import Combine

class StockUseCase {
    func fetchStocksPublisher(keywords: String) -> AnyPublisher<StockResult, Error> {
        return stockRepository.fetchStockPublisher(keywords: keywords)
    }
    
    private let stockRepository: StockRepository
    
    init(stockRepository: StockRepository) {
        self.stockRepository = stockRepository
    }
}
