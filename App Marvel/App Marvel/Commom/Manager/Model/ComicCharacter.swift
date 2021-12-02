//
//  ComicCharacter.swift
//  App Marvel
//
//  Created by Thiago Vaz on 02/12/21.
//

import Foundation

public struct ComicCharacter: Decodable {
    public let id: Int
    public let name: String?
    public let description: String?
    public let thumbnail: Image?
}
