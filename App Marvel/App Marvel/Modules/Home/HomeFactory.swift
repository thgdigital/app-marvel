//
//  HomeFactory.swift
//  App Marvel
//
//  Created by Thiago Vaz on 01/12/21.
//

import Foundation
import UIKit


public enum HomeFactory {
    
    static func make(manager: MarvelManager, wiframe: HomeWireframe)-> UIViewController {
        let interactor = HomeInteractor(manager: manager, total: 1559)
        let presenter = HomePresenter(interactor: interactor, wireframe: wiframe)
        interactor.presenter = presenter
        let homeView = HomeViewController(presenter: presenter)
        presenter.displayView = homeView
        return homeView
    }
}
