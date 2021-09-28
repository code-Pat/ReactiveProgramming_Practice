//
//  Error+ErrorDescription.swift
//  ReactivePractice
//
//  Created by Donggeun Lee on 2021/09/28.
//

import Foundation

public enum MyError: Error {
    case badResponse
    case badUrl
    case encoding
}

extension MyError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .badResponse :
            return "네트워크 상태가 좋지 않습니다"
        case .badUrl :
            return "유효하지 않은 url 입니다"
        case .encoding :
            return "인코딩에 실패하였습니다"
        }
    }
}
