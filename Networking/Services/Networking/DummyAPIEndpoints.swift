//
//  DummyAPIEndpoints.swift
//  Networking
//
//  Created by Theo Ntogiakos on 08/10/2023.
//

import Foundation

enum DummyAPIEndpoint {
    case users
    case user(id: String)
    
    case posts
    case post(id: String)
    case postsByUser(userId: String)
    case postsByTag(tagId: String)
    
    case comments
    case commentsByPost(postId: String)
    case commentsByUser(userId: String)
    
    case tags
    
    public var endpoint: Endpoint {
        let headers = ["app-id": "sdf"]
        var endpoint = Endpoint(headers: headers)
        switch self {
        case .users:
            endpoint.path = "/user"
        case .user(let id):
            endpoint.path = "/user/\(id)"
        case .posts:
            endpoint.path = "/post"
        case .post(let id):
            endpoint.path = "/post/\(id)"
        case .postsByUser(let userId):
            endpoint.path = "/user/\(userId)/post"
        case .postsByTag(let tagId):
            endpoint.path = "/tag/\(tagId)/post"
        case .comments:
            endpoint.path = "/post"
        case .commentsByPost(let postId):
            endpoint.path = "/post/\(postId)/comment"
        case .commentsByUser(let userId):
            endpoint.path = "/user/\(userId)/comment"
        case .tags:
            endpoint.path = "/tag"
        }
        return endpoint
    }
    
    func endpoint(path: String, queryItems: [URLQueryItem] = [], headers: [String: Any] = [:]) -> Endpoint {
        return Endpoint(basePath: "/data/v1", host: "dummyapi.io", path: path, headers: headers)
    }
}
