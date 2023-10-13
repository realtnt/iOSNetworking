//
//  SWAPIEndpoints.swift
//  Networking
//
//  Created by Theo Ntogiakos on 13/10/2023.
//

import Foundation

enum SWAPIEndpoint {
    case films
    case film(id: String)
    
    case people
    case person(id: String)
    
    case planets
    case planet(id: String)

    case allSpecies
    case species(id: String)
    
    case starships
    case starship(id: String)
    
    case vehicles
    case vehicle(id: String)
    
    public var endpoint: Endpoint {
        let headers = ["app-id": "sdf"]
        var endpoint = Endpoint(headers: headers)
        switch self {
        case .films:
            endpoint.path = "/films"
        case .film(let id):
            endpoint.path = "/films/\(id)"
        case .people:
            endpoint.path = "/post"
        case .person(let id):
            endpoint.path = "/post/\(id)"
        case .planets:
            endpoint.path = "/films"
        case .planet(let id):
            endpoint.path = "/films/\(id)"
        case .allSpecies:
            endpoint.path = "/post"
        case .species(let id):
            endpoint.path = "/post/\(id)"
        case .starships:
            endpoint.path = "/films"
        case .starship(let id):
            endpoint.path = "/films/\(id)"
        case .vehicles:
            endpoint.path = "/post"
        case .vehicle(let id):
            endpoint.path = "/post/\(id)"
        }
        return endpoint
    }
    
    func endpoint(path: String, queryItems: [URLQueryItem] = [], headers: [String: Any] = [:]) -> Endpoint {
        return Endpoint(basePath: "/api", host: "swapi.dev", path: path, headers: headers)
    }
}
