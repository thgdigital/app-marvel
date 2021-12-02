//
//  HomeFactory.swift
//  App Marvel
//
//  Created by Thiago Vaz on 01/12/21.
//

import Foundation
import UIKit


public enum HomeFactory {
    
    static func make() -> UIViewController {

        let interactor = HomeInteractor(manager: MarvelManager(client: MarvelApiCient(publicKey: "22e9bab7b462ebbd01fee470d5c30192", privateKey: "7cd3684824a067744989aa33c44a0fefb24a8740")))
        let presenter = HomePresenter(interactor: interactor)
        interactor.presenter = presenter
        let homeView = HomeViewController(presenter: presenter)
        presenter.displayView = homeView
        return homeView
    }
}
