//
//  MenuProfileService.swift
//  MenuProfile
//
//  Created by Jackeline Pires De Lima on 20/09/22.
//

import Foundation
import Alamofire

protocol MenuProfileServiceProtocol: GenericService {
    func getMenuFromJson(completion: @escaping completion<MenuProfileGroup?>)
    func getMenuFromApi(completion: @escaping completion<MenuProfileGroup?>)
}

class MenuProfileService: MenuProfileServiceProtocol {
    
    let url = "https://run.mocky.io/v3/58092692-5974-4fcf-9d83-c62225a0ca9a"
    
    func getMenuFromApi(completion: @escaping completion<MenuProfileGroup?>) {
        AF.request(url, method: .get).validate().responseDecodable(of: MenuProfileGroup.self) { response in
            print(#function)
            debugPrint(response)
            
            switch response.result {
            case .success(let sucess):
                print("SUCESS--->\(#function)")
                completion(sucess, nil)
            case .failure(let failure):
                print("Error--->\(#function)")
                completion(nil, Error.errorRequest(failure))
            }
        }
    }
    
    func getMenuFromJson(completion: @escaping completion<MenuProfileGroup?>) {
        if let url = Bundle.main.url(forResource: "MenuProfile", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let menu: MenuProfileGroup = try JSONDecoder().decode(MenuProfileGroup.self, from: data)
                completion(menu, nil)
            } catch {
                completion(nil, Error.fileDecodingFailure(name: "MenuProfile", error: error))
            }
        }
    }
}
