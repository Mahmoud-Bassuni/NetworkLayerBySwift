//
//  ViewController.swift
//  NetworkLayer
//
//  Created by Mahmoud Basyouny on 3/29/20.
//  Copyright © 2020 Mahmoud Basyouny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        API.shared.getRepositories(pageNo: "1")
        {
            result in
            switch result {
            case .success(let resp):
                print(resp)
            case .failure(let error):
                print(error.message)
            }
        }
    }
    
    
}

