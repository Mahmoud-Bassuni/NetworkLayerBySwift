//
//  RepositoryRouter.swift
//  NetworkLayer
//
//  Created by Mahmoud Basyouny on 3/29/20.
//  Copyright © 2020 Mahmoud Basyouny. All rights reserved.
//

import Foundation

enum RepositoryRouter {
     case getAllRepositories(page: Int)
}

extension RepositoryRouter: ServiceLayer {
    var baseURL: String {
        return "https://api.github.com"
    }

    var path: String {
        switch self {
        case .getAllRepositories:
            return "/users/johnsundell/repos"
        }
          
    }

    var parameters: [String: Any]? {
        // default params
        let params: [String: Any] = ["page": "1"]
        return params
    }

    var method: ServiceMethod {
        return .get
    }
    
    var headers: [String: String]? {
        return ["application/json":"Content-Type"]
    }
    
}
