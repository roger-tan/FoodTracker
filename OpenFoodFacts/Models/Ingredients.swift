//
//  Ingredients.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class Ingredients: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kIngredientsPercentKey: String = "percent"
	internal let kIngredientsRankKey: String = "rank"
	internal let kIngredientsInternalIdentifierKey: String = "id"
	internal let kIngredientsTextKey: String = "text"


    // MARK: Properties
	public var percent: String?
	public var rank: Int?
	public var internalIdentifier: String?
	public var text: String?


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
		percent = json[kIngredientsPercentKey].string
		rank = json[kIngredientsRankKey].int
		internalIdentifier = json[kIngredientsInternalIdentifierKey].string
		text = json[kIngredientsTextKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if percent != nil {
			dictionary.updateValue(percent!, forKey: kIngredientsPercentKey)
		}
		if rank != nil {
			dictionary.updateValue(rank!, forKey: kIngredientsRankKey)
		}
		if internalIdentifier != nil {
			dictionary.updateValue(internalIdentifier!, forKey: kIngredientsInternalIdentifierKey)
		}
		if text != nil {
			dictionary.updateValue(text!, forKey: kIngredientsTextKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.percent = aDecoder.decodeObjectForKey(kIngredientsPercentKey) as? String
		self.rank = aDecoder.decodeObjectForKey(kIngredientsRankKey) as? Int
		self.internalIdentifier = aDecoder.decodeObjectForKey(kIngredientsInternalIdentifierKey) as? String
		self.text = aDecoder.decodeObjectForKey(kIngredientsTextKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(percent, forKey: kIngredientsPercentKey)
		aCoder.encodeObject(rank, forKey: kIngredientsRankKey)
		aCoder.encodeObject(internalIdentifier, forKey: kIngredientsInternalIdentifierKey)
		aCoder.encodeObject(text, forKey: kIngredientsTextKey)

    }

}
