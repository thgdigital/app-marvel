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
        let interactor = HomeInteractor()
        let presenter = HomePresenter(interactor: interactor)
        interactor.presenter = presenter
        let homeView = HomeViewController(presenter: presenter)
        presenter.displayView = homeView
        return homeView
    }
}
