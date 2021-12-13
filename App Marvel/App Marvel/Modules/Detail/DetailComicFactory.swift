//
//  DetailComicFactory.swift
//  App Marvel
//
//  Created by Thiago Vaz on 09/12/21.
//

import UIKit

public enum  DetailComicFactory {
    
    static func make(id: Int, manager: MarvelManager) -> DetailComicViewController {
        let layout = UICollectionViewLayout()
        let viewController = DetailComicViewController(collectionViewLayout: layout)
        let interactor = DetailComicInteractor(id: id, manager: manager)
        let presenter = DetailComicPresenter(interactor: interactor)
        viewController.presenter = presenter
        
        return viewController
    }
}
 
