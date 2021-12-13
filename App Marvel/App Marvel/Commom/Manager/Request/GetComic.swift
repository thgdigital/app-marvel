//
//  GetComic.swift
//  App Marvel
//
//  Created by Thiago Vaz on 09/12/21.
//

import Foundation

public struct GetComic: APIRequest {
    public typealias Response = [Comic]

    // Notice how we create a composed resourceName
    public var resourceName: String {
        return "characters/\(comicId)"
    }

    // Parameters
    private let comicId: Int

    public init(comicId: Int) {
        self.comicId = comicId
    }
}
