//
//  StockRepositoryImpl.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/15.
//
import Combine
import Foundation

class StockRepositoryImpl: StockRepository {
    let apiKey: String = "JSHOR8KXBN10Y5EA"
    let decoder = JSONDecoder()
    
    func fetchStockPublisher(keywords: String) -> AnyPublisher<StockResult, Error> {
        let urlString = "https://www.alphavantage.co/query?function=SYMBOL_SEARCH&keywords=\(keywords)&apikey=\(apiKey)"
        
        guard let url = URL(string: urlString) else {
            let error = URLError(.badURL)
            return Fail(error: error).eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: url).map { $0.data }.decode(type: StockResult.self, decoder: decoder).receive(on: RunLoop.main).eraseToAnyPublisher()
    }
}

