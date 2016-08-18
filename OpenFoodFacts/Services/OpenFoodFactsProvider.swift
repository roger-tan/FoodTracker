//
//  OpenFoodFactsService.swift
//  OpenFoodFacts
//
//  Created by Roger TAN on 7/12/16.
//  Copyright © 2016 Roger TAN. All rights reserved.
//

import Foundation
import Moya


let openFoodFactsProvider = MoyaProvider<OpenFoodFactsProvider>(plugins: [NetworkLoggerPlugin(verbose: true, responseDataFormatter: JSONResponseDataFormatter)], endpointClosure: endpointClosure)


enum OpenFoodFactsProvider {
    case Search(searchTerms: String)
}

extension OpenFoodFactsProvider: TargetType {
    
    var baseURL: NSURL { return NSURL(string: "http://world.openfoodfacts.org")! }

    var path: String {
        switch self {
        case .Search(let searchTerms):
            return "/cgi/search.pl?search_terms=\(searchTerms)&search_simple=1&action=process&json=1"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .Search:
            return .GET
        }
    }
    
    var parameters: [String: AnyObject]? {
        return nil
    }
    
    var sampleData: NSData {
        switch self {
        case .Search(let searchTerms):
            return "".UTF8EncodedData
        }
    }
    
}

// MARK: - Helpers
private extension String {
    var URLEscapedString: String {
        return self.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLHostAllowedCharacterSet())!
    }
    var UTF8EncodedData: NSData {
        return self.dataUsingEncoding(NSUTF8StringEncoding)!
    }
}


/**
 This function will try to generate a json
 - parameter data: data from the http response
 - returns: a data of JSON pretty printed
 */
private func JSONResponseDataFormatter(data: NSData) -> NSData {
    do {
        let dataAsJSON = try NSJSONSerialization.JSONObjectWithData(data, options: [])
        let prettyData =  try NSJSONSerialization.dataWithJSONObject(dataAsJSON, options: .PrettyPrinted)
        return prettyData
    } catch {
        return data //fallback to original data if it cant be serialized
    }
}

/**
 Get a URL by TargetType
 - parameter route: targetType of the enum case
 - returns: absolute url string
 */
private func url(route: TargetType) -> String {
    return route.baseURL.URLByAppendingPathComponent(route.path).absoluteString
}

/**
 * This will be use to be sure that we send a json parameters to Send
 */
private var endpointClosure = { (target: OpenFoodFactsProvider) -> Endpoint<OpenFoodFactsProvider> in
    let endpoint: Endpoint<OpenFoodFactsProvider> = Endpoint<OpenFoodFactsProvider>(
        URL: url(target),
        sampleResponseClosure: {.NetworkResponse(200, target.sampleData)},
        method: target.method,
        parameters: target.parameters
    )
    switch target {
    default:
        return endpoint
    }
}
