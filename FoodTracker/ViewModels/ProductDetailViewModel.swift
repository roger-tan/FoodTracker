//
//  ProductDetailViewModel.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/28/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import Foundation

struct ProductDetailViewModel {
    
    var nameText: String {
        return product.name
    }
    
    var brandText: String {
        return product.brand
    }
    
    var ingredientsText: String {
        return product.ingredients
    }
    
    var countryText: String {
        return product.countries
    }
    
    let product: Product
    
}
