//
//  FileHelper.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/29/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import Foundation

class FileHelper {

    static func loadDataFromJSON(for fileName: String) -> [String: Any]? {
        let path = Bundle(for: FileHelper.self).path(forResource: fileName, ofType: "json")
        let data = NSData(contentsOfFile: path!)!
        let json = try? JSONSerialization.jsonObject(with: data as Data, options: [])
        return json as? [String: Any]
    }

}
