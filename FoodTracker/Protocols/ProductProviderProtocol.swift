//
//  ProductProvider.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/28/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import Foundation

protocol ProductProviderProtocol {

    typealias ProductCompletion = (_ product: Product?, _ error: Error?) -> Void

    static func product(id: String, onCompletion: @escaping ProductCompletion)

}
