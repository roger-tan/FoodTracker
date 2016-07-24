//
//  400.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class 400: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let k400HKey: String = "h"
	internal let k400WKey: String = "w"


    // MARK: Properties
	public var h: Int?
	public var w: Int?


    // MARK: SwiftyJSON Initalizers
    /**
    Initates the class based on the object
    - parameter object: The object of either Dictionary or Array kind that was passed.
    - returns: An initalized instance of the class.
    */
    convenience public init(object: AnyObject) {
        self.init(json: JSON(object))
    }

    /**
    Initates the class based on the JSON that was passed.
    - parameter json: JSON object from SwiftyJSON.
    - returns: An initalized instance of the class.
    */
    public init(json: JSON) {
		h = json[k400HKey].int
		w = json[k400WKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if h != nil {
			dictionary.updateValue(h!, forKey: k400HKey)
		}
		if w != nil {
			dictionary.updateValue(w!, forKey: k400WKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.h = aDecoder.decodeObjectForKey(k400HKey) as? Int
		self.w = aDecoder.decodeObjectForKey(k400WKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(h, forKey: k400HKey)
		aCoder.encodeObject(w, forKey: k400WKey)

    }

}
