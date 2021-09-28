//
//  StockDetailUseCase.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/28.
//

import Combine

class StockDetailUseCase {
    
    func fetchTimeSeriesPublisher(keywords: String) -> AnyPublisher<TimeSeriesMonthlyAdjusted, Error> {
        return stockRepository.fetchTimeSeriesPublisher(keywords: keywords)
    }
    
    private let stockRepository: StockRepository
    
    init(stockRepository: StockRepository) {
        self.stockRepository = stockRepository
    }
}
