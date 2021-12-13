//
//  CharacterCell.swift
//  App Marvel
//
//  Created by Thiago Vaz on 02/12/21.
//

import UIKit

class CharacterCell: UITableViewCell {
    
    var dataTask: URLSessionDataTask?
    let session = URLSession.shared
  
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView?.image = nil
        textLabel?.text = ""
        detailTextLabel?.text = ""
        dataTask?.cancel()
    }
    
    func setup(display: ComicCharacterDisplay) {
        textLabel?.text = display.name
        detailTextLabel?.text = display.description
        if let url = URL(string: display.thumbnail) {
           downloadImage(from: url)
        }
    }
    
    func downloadImage(from url: URL) {
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
            DispatchQueue.main.async {
                self.imageView?.image = UIImage(data: data)
                self.layoutIfNeeded()
            }
        }
    }
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()){
        dataTask = session.dataTask(with: url, completionHandler: completion)
        dataTask?.resume()
    }

}
