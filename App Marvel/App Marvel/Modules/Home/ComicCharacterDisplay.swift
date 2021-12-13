//
//  ComicCharacterDisplay.swift
//  App Marvel
//
//  Created by Thiago Vaz on 02/12/21.
//

import Foundation

struct ComicCharacterDisplay {
    let id: Int
    let name: String
    let description: String
    let thumbnail: String
    
    init(entity: ComicCharacterEntenty) {
        self.id = entity.id
        self.thumbnail = entity.thumbnail
        self.description = entity.description
        self.name = entity.name
    }
}
