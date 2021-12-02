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
    
    weak var presenter: HomeInteracting?

}

extension HomeInteractor: HomeInteractInput {

    func loadCard() {
    
    }
}


