//
//  ServiceResult.swift
//  NetworkLayer
//
//  Created by Mahmoud Basyouny on 3/30/20.
//  Copyright © 2020 Mahmoud Basyouny. All rights reserved.
//


enum Result<T> {
    case success(T)
    case failure(ApiError)
}
