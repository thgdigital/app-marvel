//
//  HomeInterector.swift
//  App Marvel
//
//  Created by Thiago Vaz on 01/12/21.
//

import Foundation

protocol HomeInteractInput: AnyObject{
    func loadCard()
}

protocol HomeInteracting: AnyObject {
    
}

final class HomeInteractor {
    let manager:MarvelManager
    
    weak var presenter: HomeInteracting?
    
    init(manager: MarvelManager) {
        self.manager = manager
    }

}

extension HomeInteractor: HomeInteractInput {

    func loadCard() {
        self.manager.getCharacters(GetCharacters()) { [weak self] result in
            print(result)
        }
    }
}
