//
//  HomeInterector.swift
//  App Marvel
//
//  Created by Thiago Vaz on 01/12/21.
//

import Foundation

protocol HomeInteractInput: AnyObject {
    var name: String? { get set}
    var offset: Int { get set}
    var count: Int { get set }
    var limit: Int {get set}
    func loadCard()
}

protocol HomeInteracting: AnyObject {
    func loadCharacters(entites: [ComicCharacterEntenty])
}

final class HomeInteractor {
    let total: Int
    var offset: Int = 0
    var count: Int  = 0
    var limit: Int = 20
    var name: String? = nil
    let manager: MarvelManager
    
    weak var presenter: HomeInteracting?
    
    init(manager: MarvelManager, total: Int) {
        self.manager = manager
        self.total = total
    }

}

extension HomeInteractor: HomeInteractInput {

    func loadCard() {
        self.manager.getCharacters(GetCharacters(name: name, limit: limit, offset: offset)) { [weak self] result in
            switch result {
            case .success(let dataContainer):
                guard let strongSelf = self else {
                    return
                }
                strongSelf.limit = dataContainer.limit
                strongSelf.offset = dataContainer.offset + 1
                strongSelf.count = dataContainer.count
                let entites = dataContainer.results.map({ ComicCharacterEntenty(model: $0) })
                strongSelf.presenter?.loadCharacters(entites: entites)
            case .failure(let error):
                print(error)
            }
        }
    }
}
