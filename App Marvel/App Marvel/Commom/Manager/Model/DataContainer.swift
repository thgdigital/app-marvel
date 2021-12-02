//
//  DataContainer.swift
//  App Marvel
//
//  Created by Thiago Vaz on 02/12/21.
//

import Foundation

public struct DataContainer<Results: Decodable>: Decodable {
    public let offset: Int
    public let limit: Int
    public let total: Int
    public let count: Int
    public let results: Results
}
