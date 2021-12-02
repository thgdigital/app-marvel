//
//  MarvelManager.swift
//  App Marvel
//
//  Created by Thiago Vaz on 02/12/21.
//

import Foundation

class MarvelManager {
    
    let client: Client
    
    init(client: Client) {
        self.client = client
    }
    
    func getCharacters<T: APIRequest>(_ request: T, completionHandle: @escaping ResultCallback<DataContainer<T.Response>>) {
        client.dataTask(request) { response in
            completionHandle(response)
        }
    }
    
}

