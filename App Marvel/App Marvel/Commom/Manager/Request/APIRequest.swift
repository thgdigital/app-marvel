//
//  APIRequest.swift
//  App Marvel
//
//  Created by Thiago Vaz on 02/12/21.
//

import Foundation

public protocol APIRequest: Encodable {
    /// Response (will be wrapped with a DataContainer)
    associatedtype Response: Decodable

    /// Endpoint for this request (the last part of the URL)
    var resourceName: String { get }
}
