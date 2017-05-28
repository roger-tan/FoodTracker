//
//  Product.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/1/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import Foundation

enum SerializationError: Error {
    case missing(String)
    case invalid(String, Any)
}

// MARK: - Default Model

struct Product {

    let id: Int
    let brand: String
    let name: String
    let ingredients: String
    let code: String
    let countries: String

}

// MARK: - Customs Initializers

extension Product {

    init(dictionnary: [String: Any]) throws {
        guard let id = dictionnary["id"] as? Int else {
            throw SerializationError.missing("id")
        }
        
        guard let brand = dictionnary["brands"] as? String else {
            throw SerializationError.missing("brand")
        }
        
        guard let name = dictionnary["generic_name"] as? String else {
            throw SerializationError.missing("name")
        }
        
        guard let ingredients = dictionnary["ingredients_text"] as? String else {
            throw SerializationError.missing("ingredients")
        }
        
        guard let code = dictionnary["code"] as? String else {
            throw SerializationError.missing("code")
        }
        
        guard let countries = dictionnary["countries"] as? String else {
            throw SerializationError.missing("countries")
        }
        
        self.id = id
        self.brand = brand
        self.name = name
        self.ingredients = ingredients
        self.code = code
        self.countries = countries
    }
    
}
