//
//  API.swift
//  NetworkLayer
//
//  Created by Mahmoud Basyouny on 3/30/20.
//  Copyright © 2020 Mahmoud Basyouny. All rights reserved.
//

import Foundation
class API {
    
    static let shared = API()
    
    private init() {}
    
    func getRepositories(pageNo : Int , completion:@escaping (Result<RepositoriesCodableModel>) -> Void) {
        
        ServiceProvider<RepositoryRouter>().load(service: .getAllRepositories(page: pageNo), decodeType: RepositoriesCodableModel.self, completion: completion)
        
    }
    
}
