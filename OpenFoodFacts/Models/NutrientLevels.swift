//
//  NutrientLevels.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class NutrientLevels: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kNutrientLevelsSaltKey: String = "salt"
	internal let kNutrientLevelsSaturatedFatKey: String = "saturated-fat"
	internal let kNutrientLevelsSugarsKey: String = "sugars"
	internal let kNutrientLevelsFatKey: String = "fat"


    // MARK: Properties
	public var salt: String?
	public var saturatedFat: String?
	public var sugars: String?
	public var fat: String?


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
		salt = json[kNutrientLevelsSaltKey].string
		saturatedFat = json[kNutrientLevelsSaturatedFatKey].string
		sugars = json[kNutrientLevelsSugarsKey].string
		fat = json[kNutrientLevelsFatKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if salt != nil {
			dictionary.updateValue(salt!, forKey: kNutrientLevelsSaltKey)
		}
		if saturatedFat != nil {
			dictionary.updateValue(saturatedFat!, forKey: kNutrientLevelsSaturatedFatKey)
		}
		if sugars != nil {
			dictionary.updateValue(sugars!, forKey: kNutrientLevelsSugarsKey)
		}
		if fat != nil {
			dictionary.updateValue(fat!, forKey: kNutrientLevelsFatKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.salt = aDecoder.decodeObjectForKey(kNutrientLevelsSaltKey) as? String
		self.saturatedFat = aDecoder.decodeObjectForKey(kNutrientLevelsSaturatedFatKey) as? String
		self.sugars = aDecoder.decodeObjectForKey(kNutrientLevelsSugarsKey) as? String
		self.fat = aDecoder.decodeObjectForKey(kNutrientLevelsFatKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(salt, forKey: kNutrientLevelsSaltKey)
		aCoder.encodeObject(saturatedFat, forKey: kNutrientLevelsSaturatedFatKey)
		aCoder.encodeObject(sugars, forKey: kNutrientLevelsSugarsKey)
		aCoder.encodeObject(fat, forKey: kNutrientLevelsFatKey)

    }

}
