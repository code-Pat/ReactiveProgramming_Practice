//
//  Stock.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/15.
//

import Foundation

struct StockResult: Decodable {
    var items: [Stock]
    
    enum CodingKeys: String, CodingKey {
        case items = "bestMatches"
    }
    
}

struct Stock: Decodable {
    var symbol: String?
    var name: String?
    var type: String?
    var currency: String?
    
    // api를 통해 받아오는 데이터와 구조가 달라서 리맵핑
    enum CodingKeys: String, CodingKey {
        case symbol = "1. symbol"
        case name = "2. name"
        case type = "3. type"
        case currency = "8. currency"
    }
}
