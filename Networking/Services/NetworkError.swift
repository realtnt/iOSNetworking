//
//  NetworkError.swift
//  Networking
//
//  Created by Theo Ntogiakos on 08/10/2023.
//

import Foundation

public enum NetworkError: Error {
    case httpError(statusCode: Int)
    case noData
    case invalidResponse
    case decodingError(description: String)
    
    var customDescription: String {
        switch self {
        case let .httpError(statusCode):
            let httpStatus = HTTPStatus(rawValue: statusCode)
            return httpStatus?.description ?? "Unknown status: \(statusCode)"
        case .noData: return "No Data."
        case .invalidResponse: return "Invalid Response."
        case let .decodingError(description): return "JSON decoding failed: \(description)"
        }
    }
}
