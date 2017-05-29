//
//  OpenFoodFactsApi.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/28/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import Foundation
import Moya

enum OpenFoodFactsApi {
    case product(id: String)
}

extension OpenFoodFactsApi: TargetType {

    var baseURL: URL {
        return URL(string: "https://world.openfoodfacts.org/api/v0")!
    }
    
    var path: String {
        switch self {
        case .product(id: let id):
            return "/product/\(id).json"
        default:
            return ""
        }
    }
    
    var method: Moya.Method {
        switch self {
        default:
            return .get
        }
    }
    
    var parameters: [String : Any]? {
        switch self {
        default:
            return nil
        }
    }
    
    public var parameterEncoding: Moya.ParameterEncoding {
        switch self {
        default:
            return JSONEncoding.default
        }
    }
    
    public var sampleData: Data {
        switch self {
        default:
            return Data()
        }
    }
    
    var task: Moya.Task {
        switch self {
        default:
            return .request
        }
    }
    
    /// Whether or not to perform Alamofire validation. Defaults to `false`.
    var validate: Bool {
        return false
    }
    
}
