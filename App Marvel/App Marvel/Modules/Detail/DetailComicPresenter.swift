//
//  DetailComicPresenter.swift
//  App Marvel
//
//  Created by Thiago Vaz on 09/12/21.
//

import Foundation

protocol DetailComicPresentInput: AnyObject {
    var displayView: HomePresenting? { get set }
    func loadScreen()
}


class DetailComicPresenter: DetailComicPresentInput {
    
   weak  var displayView: HomePresenting?
    
    let interactor: DetailComicInteractInput
    
    init(interactor: DetailComicInteractInput) {
        self.interactor = interactor
    }
    
    func loadScreen() {
        interactor.load()
    }
}
