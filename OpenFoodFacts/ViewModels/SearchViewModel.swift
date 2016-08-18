//
//  SearchViewModels.swift
//  OpenFoodFacts
//
//  Created by Roger TAN on 8/17/16.
//  Copyright © 2016 Roger TAN. All rights reserved.
//

import Foundation
import SwiftyJSON

class SearchViewModel {
    
    var previousResults: [ProductViewModel] = [ProductViewModel]()
    
    /**
     Execute a search by query
     
     - parameter query:      query to search
     - parameter completion: return a search object contain response
     */
    func executeSearch(query: String, completion: (products: [ProductViewModel]?, error: NSError?) -> Void) {
        openFoodFactsProvider.request(.Search(searchTerms: query), completion:  { (result) in
            switch result {
            case let .Success(response):
                let json = JSON(data: response.data)
                switch response.statusCode {
                case 200 ... 299:
                    let searchResult = Search(json: json)
                    self.previousResults = self.getOnlyProductViewModels(searchResult)
                    completion(products: self.previousResults, error: nil)
                    break
                default:
                    // Do generic
                    // completion(venues: nil, error: nil)
                    break
                }
            case let .Failure(error):
                guard let error = error as? NSError else {
                    break
                }
                completion(products: nil, error: error)
            }
        })
    }
    
    /**
     Converts a Search Result Object to an array of Product View Model
     
     - parameter searchResult: query to search
     
     - returns: An array of Product View Models
     */
    private func getOnlyProductViewModels(searchResult: Search) -> [ProductViewModel] {
        var productViewModels = [ProductViewModel]()
        
        if let products = searchResult.products {
            for product in products {
                productViewModels.append(ProductViewModel(product: product))
            }
        } else {
            return []
        }
        return productViewModels
    }
}