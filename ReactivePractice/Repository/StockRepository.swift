//
//  StockRepository.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/15.
//

import Combine

protocol StockRepository {
    func fetchStockPublisher(keywords: String) -> AnyPublisher<StockResult, Error>
    func fetchTimeSeriesPublisher(keywords: String) -> AnyPublisher<TimeSeriesMonthlyAdjusted, Error>
}
