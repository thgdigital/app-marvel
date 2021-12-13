//
//  HomePresenter.swift
//  App Marvel
//
//  Created by Thiago Vaz on 01/12/21.
//

import Foundation

protocol HomePresentInput: AnyObject {
    var displayView: HomePresenting? { get set }
    func loadScreen()
    func didSelected(id: Int)
}

protocol HomePresenting: AnyObject {
    func loadDisplay(display: [ComicCharacterDisplay])
}

final class HomePresenter {
    
    weak var displayView: HomePresenting?
    
    let interactor: HomeInteractInput
    
    let wireframe: HomeWireframe
    
    init(interactor: HomeInteractInput, wireframe: HomeWireframe) {
        self.interactor = interactor
        self.wireframe = wireframe
    }
    
}

extension HomePresenter: HomePresentInput {
    
    func didSelected(id: Int) {
        wireframe.showDetail(id: id)
    }
    
    func loadScreen() {
        interactor.loadCard()
    }
}

extension HomePresenter: HomeInteracting {
    func loadCharacters(entites: [ComicCharacterEntenty]) {
        DispatchQueue.main.async {
            self.displayView?.loadDisplay(display: entites.map({ ComicCharacterDisplay(entity: $0)}))
        }
    }
}
