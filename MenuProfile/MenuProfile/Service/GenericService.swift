//
//  GenericService.swift
//  MenuProfile
//
//  Created by Jackeline Pires De Lima on 20/09/22.
//

import Foundation
import Alamofire

protocol GenericService: AnyObject {
    typealias completion <T> = (_ result: T, _ failure: Error?) -> Void
}

enum Error: Swift.Error {
    case fileNotFound(name: String)
    case fileDecodingFailure(name: String, error: Swift.Error)
    case errorRequest(AFError)
}
