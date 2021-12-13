//
//  DetailComicWireframe.swift
//  App Marvel
//
//  Created by Thiago Vaz on 09/12/21.
//

import Foundation

final class DetailComicWireframe {
    
    func start(id: Int, manager: MarvelManager) -> DetailComicViewController {
       return DetailComicFactory.make(id: id, manager: manager)
    }
}
