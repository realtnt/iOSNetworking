//
//  Endpoint.swift
//  Networking
//
//  Created by Theo Ntogiakos on 08/10/2023.
//

import Foundation

struct Endpoint {
    var scheme = "https"
    var basePath: String = ""
    var host: String = ""
    var path: String = ""
    var queryItems: [URLQueryItem] = []
    var headers: [String: Any] = [:]
    var url: URL {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = basePath + path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        return url
    }
}
