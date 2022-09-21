//
//  MenuProfileViewModel.swift
//  MenuProfile
//
//  Created by Jackeline Pires De Lima on 20/09/22.
//

import Foundation

enum TypeFetch {
    case mock
    case request
}

class MenuProfileViewModel {
    
    private let service = MenuProfileService()
    
    func fetch(from type: TypeFetch) {
        switch type {
        case .mock:
            service.getMenuFromJson { result, failure in
                print(result)
            }
        case .request:
            service.getMenuFromApi { success, failure in
                print(success)
            }
        }
    }
}
