//
//  Sizes.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class Sizes: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kSizesFullKey: String = "full"
//	internal let kSizes400Key: String = "400"
//	internal let kSizes100Key: String = "100"


    // MARK: Properties
	public var full: Full?
//	public var 400: 400?
//	public var 100: 100?


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
		full = Full(json: json[kSizesFullKey])
//		400 = 400(json: json[kSizes400Key])
//		100 = 100(json: json[kSizes100Key])

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if full != nil {
			dictionary.updateValue(full!.dictionaryRepresentation(), forKey: kSizesFullKey)
		}
//		if 400 != nil {
//			dictionary.updateValue(400!.dictionaryRepresentation(), forKey: kSizes400Key)
//		}
//		if 100 != nil {
//			dictionary.updateValue(100!.dictionaryRepresentation(), forKey: kSizes100Key)
//		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.full = aDecoder.decodeObjectForKey(kSizesFullKey) as? Full
//		self.400 = aDecoder.decodeObjectForKey(kSizes400Key) as? 400
//		self.100 = aDecoder.decodeObjectForKey(kSizes100Key) as? 100

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(full, forKey: kSizesFullKey)
//		aCoder.encodeObject(400, forKey: kSizes400Key)
//		aCoder.encodeObject(100, forKey: kSizes100Key)

    }

}
