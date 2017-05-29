//
//  ProductResponse.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/28/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import Foundation
import Moya

struct ProductResponse: ResourceType {

    let product: Product

}

// MARK: - Initializers

extension ProductResponse {

    init(dictionary: JSONDictionary) throws {
        guard let product = dictionary["product"] as? JSONDictionary else {
            throw SerializationError.missing("product")
        }

        self.product = try Product(dictionnary: product)
    }

}
