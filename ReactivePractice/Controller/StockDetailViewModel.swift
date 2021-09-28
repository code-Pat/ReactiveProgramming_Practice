//
//  StockDetailViewModel.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/28.
//

import Combine
import RxSwift

class StockDetailViewModel: BaseViewModel {
    @Published var loading = false
    @Published var errorMessage: String?
    @Published var timeSeriesMonthlyAdjusted: TimeSeriesMonthlyAdjusted?
    
    let usecase: StockDetailUseCase
    
    func viewDidLoad(symbol: String) {
        loading = true
        usecase.fetchTimeSeriesPublisher(keywords: symbol).sink { completion in
            self.loading = false
            switch completion {
            case .failure(let error):
                self.errorMessage = error.localizedDescription
            case .finished: break
            }
        } receiveValue: { value in
            var timeSeriesMonthlyAdjusted = value
            timeSeriesMonthlyAdjusted.generateMonthInfos()
            self.timeSeriesMonthlyAdjusted = timeSeriesMonthlyAdjusted
        }.store(in: &subscriber)
    }
    
    init(usecase: StockDetailUseCase) {
        self.usecase = usecase
        super.init()
    }

}
