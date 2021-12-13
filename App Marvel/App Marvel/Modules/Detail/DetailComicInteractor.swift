//
//  DetailComicInteractor.swift
//  App Marvel
//
//  Created by Thiago Vaz on 09/12/21.
//

import Foundation

protocol DetailComicInteractInput: AnyObject {
    func load()
}

final class DetailComicInteractor: DetailComicInteractInput {
    
    let id: Int
    
    let manager: MarvelManager
    
    init(id: Int, manager: MarvelManager) {
        self.manager = manager
        self.id = id
    }
}

extension DetailComicInteractor {
    func load() {
        self.manager.getComics(GetComic(comicId: id)) { [weak self] result in
           dump(result)
        }
    }
}
