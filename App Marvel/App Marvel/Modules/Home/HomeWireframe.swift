//
//  HomeWireframe.swift
//  App Marvel
//
//  Created by Thiago Vaz on 01/12/21.
//

import Foundation
import UIKit

final class HomeWireframe {
    
    var navigation: UINavigationController?
    weak var viewController: UIViewController?
    var manager: MarvelManager?
    
    func start(apiClient: Client) -> UINavigationController {
        let manager = MarvelManager(client: apiClient)
        let homeController  = HomeFactory.make(manager: manager, wiframe: self)
        let navigationControler = UINavigationController(rootViewController: homeController)
        viewController = homeController
        navigation = navigationControler
        self.manager = manager
        return navigationControler
    }
    
    func showDetail(id: Int) {
        guard let manager = self.manager else {
            fatalError()
        }
        let detailView = DetailComicWireframe().start(id: id, manager: manager)
        navigation?.pushViewController(detailView, animated: true)
    }
}
