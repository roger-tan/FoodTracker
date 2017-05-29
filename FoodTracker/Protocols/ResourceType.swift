//
//  ResourceType.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/28/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import Foundation

typealias JSONDictionary = [String: Any]

protocol ResourceType {
    
    init(dictionary: JSONDictionary) throws
    
}
