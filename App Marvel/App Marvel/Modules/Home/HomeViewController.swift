//
//  HomeViewController.swift
//  App Marvel
//
//  Created by Thiago Vaz on 01/12/21.
//

import UIKit

class HomeViewController: UITableViewController {
    
    let presenter: HomePresentInput
    let cellID = "cellID"
    
    var display: [ComicCharacterDisplay] = []
    
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
    
    func configureViews() {
        tableView.register(CharacterCell.self, forCellReuseIdentifier: cellID)
    }
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

extension HomeViewController: HomePresenting {
    func loadDisplay(display: [ComicCharacterDisplay]) {
        self.display = display
        tableView.reloadData()
    }
}

extension HomeViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        display.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? CharacterCell else {
            return UITableViewCell()
        }
        
        cell.setup(display: display[indexPath.row])
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.didSelected(id: display[indexPath.row].id)
    }
    
}
