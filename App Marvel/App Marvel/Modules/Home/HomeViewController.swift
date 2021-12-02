//
//  HomeViewController.swift
//  App Marvel
//
//  Created by Thiago Vaz on 01/12/21.
//

import UIKit

public protocol HomeDisplaying: AnyObject {
    
}

class HomeViewController: UIViewController {
    
    let presenter: HomePresentInput
    
    public init(presenter: HomePresentInput) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        buildLayout()
        presenter.loadScreen()
    }
    
    func buildViewHierarchy() {}
    func setupConstraints() {}
    func configureViews() {}
    func configureStyles() {
        view.backgroundColor = .white
    }
    
    func buildLayout() {
        buildViewHierarchy()
        setupConstraints()
        configureViews()
        configureStyles()
    }
}

extension HomeViewController: HomeDisplaying {
    
}
