//
//  NetworkActivityIndicatorPlugin.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/28/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import UIKit
import Moya
import Result

struct NetworkActivityIndicatorPlugin: PluginType {

    // MARK: - Plugin Type

    func willSend(_ request: RequestType, target: TargetType) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }

    func didReceive(_ result: Result<Response, MoyaError>, target: TargetType) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

}
