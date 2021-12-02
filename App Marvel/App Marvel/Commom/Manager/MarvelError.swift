//
//  MarvelError.swift
//  App Marvel
//
//  Created by Thiago Vaz on 02/12/21.
//

import Foundation

public enum MarvelError: Error {
    case encoding
    case decoding
    case server(message: String)
}
