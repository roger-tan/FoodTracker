//
//  ProductViewModel.swift
//  OpenFoodFacts
//
//  Created by Roger TAN on 8/17/16.
//  Copyright © 2016 Roger TAN. All rights reserved.
//

import Foundation

class ProductViewModel {

    let product: Products
    var nameText: String {
        get {
            return product.productName ?? "Unknown product name"
        }
    }
    
    init(product: Products) {
        self.product = product
    }
}