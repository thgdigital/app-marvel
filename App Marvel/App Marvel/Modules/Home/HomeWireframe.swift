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
    
    func start(apiClient: Client) -> UINavigationController {
        let manager = MarvelManager(client: apiClient)
        let homeController  = HomeFactory.make(manager: manager)
        let navigationControler = UINavigationController(rootViewController: homeController)
        viewController = homeController
        navigation = navigationControler
        return navigationControler
    }
}
