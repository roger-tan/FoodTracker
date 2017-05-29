//
//  Providers.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/28/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import Foundation
import Moya

struct Providers {
    
    private static let networkActivityIndicator = NetworkActivityIndicatorPlugin()
    
    static let OpenFoodFacts = MoyaProvider<OpenFoodFactsApi>(plugins: [networkActivityIndicator])
    
}
