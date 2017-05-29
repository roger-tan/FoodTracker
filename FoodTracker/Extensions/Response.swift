//
//  Response.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/28/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import Foundation
import Moya

extension Response {
    
    func mapResource<Resource: ResourceType>() throws -> Resource {
        guard let dictionary = try mapJSON() as? JSONDictionary else {
            throw MoyaError.jsonMapping(self)
        }
        
        return try Resource(dictionary: dictionary)
    }
    
}
