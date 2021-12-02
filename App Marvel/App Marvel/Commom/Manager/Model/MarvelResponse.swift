//
//  MarvelResponse.swift
//  App Marvel
//
//  Created by Thiago Vaz on 02/12/21.
//

import Foundation

public struct MarvelResponse<Response: Decodable>: Decodable {
    /// Whether it was ok or not
    public let status: String?
    /// Message that usually gives more information about some error
    public let message: String?
    /// Requested data
    public let data: DataContainer<Response>?
}
