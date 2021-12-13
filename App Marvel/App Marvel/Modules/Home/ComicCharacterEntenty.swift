//
//  ComicCharacterEntenty.swift
//  App Marvel
//
//  Created by Thiago Vaz on 02/12/21.
//

import Foundation

struct ComicCharacterEntenty {
    let id: Int
    let name: String
    let description: String
    let thumbnail: String
    
    init(model: ComicCharacter) {
        self.id = model.id
        self.thumbnail = model.thumbnail?.url.absoluteString ?? ""
        self.description = model.description ?? ""
        self.name = model.name ?? ""
    }
}
