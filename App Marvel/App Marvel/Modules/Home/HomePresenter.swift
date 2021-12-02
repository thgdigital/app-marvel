//
//  HomePresenter.swift
//  App Marvel
//
//  Created by Thiago Vaz on 01/12/21.
//

import Foundation

protocol HomePresentInput: AnyObject {
    var displayView: HomeDisplaying? { get set }
    func loadScreen()
}

protocol HomePresenting: AnyObject {
    
}

final class HomePresenter {
    
    weak var displayView: HomeDisplaying?
    
    let interactor: HomeInteractInput
    
    
    init(interactor: HomeInteractInput) {
        self.interactor = interactor
    }
    
}

extension HomePresenter: HomePresentInput {
    func loadScreen() {
        interactor.loadCard()
    }
    
}

extension HomePresenter: HomeInteracting {
    
}
