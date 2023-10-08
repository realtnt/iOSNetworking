//
//  Network.swift
//  Networking
//
//  Created by Theo Ntogiakos on 08/10/2023.
//

import Foundation

protocol Network {
    var data: Data { get }
    
    func load<T>(url: URL, resource: T) -> T
}
