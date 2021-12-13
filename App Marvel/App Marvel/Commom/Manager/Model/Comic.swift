//
//  Comic.swift
//  App Marvel
//
//  Created by Thiago Vaz on 09/12/21.
//

import Foundation

public struct Comic: Decodable {
    public let id: Int
    public let title: String?
    public let issueNumber: Double?
    public let description: String?
    public let pageCount: Int?
    public let thumbnail: Image?
}
