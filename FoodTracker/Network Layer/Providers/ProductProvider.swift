//
//  ProductProvider.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/28/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import Foundation
import Moya

struct ProductProvider: ProductProviderProtocol {
    
    // MARK: - Dependencies
    
    static var provider: MoyaProvider = Providers.OpenFoodFacts
    
    // MARK: - Methods
    
    static func product(id: String, onCompletion: @escaping ProductCompletion) {
        
        _ = provider.request(.product(id: id), completion: { (result) in
            switch result {
            case let .success(response):
                do {
                    let productResponse: ProductResponse = try response.mapResource()
                    
                    onCompletion(productResponse.product, nil)
                } catch {
                    onCompletion(nil, error)
                }
                break
            case let .failure(error):
                onCompletion(nil, error)
                break
            }
        })
        
    }
}
