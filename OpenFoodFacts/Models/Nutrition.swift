//
//  Nutrition.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class Nutrition: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kNutritionImgidKey: String = "imgid"
	internal let kNutritionWhiteMagicKey: String = "white_magic"
	internal let kNutritionSizesKey: String = "sizes"
	internal let kNutritionNormalizeKey: String = "normalize"
	internal let kNutritionGeometryKey: String = "geometry"
	internal let kNutritionRevKey: String = "rev"


    // MARK: Properties
	public var imgid: String?
	public var whiteMagic: String?
	public var sizes: Sizes?
	public var normalize: String?
	public var geometry: String?
	public var rev: String?


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
		imgid = json[kNutritionImgidKey].string
		whiteMagic = json[kNutritionWhiteMagicKey].string
		sizes = Sizes(json: json[kNutritionSizesKey])
		normalize = json[kNutritionNormalizeKey].string
		geometry = json[kNutritionGeometryKey].string
		rev = json[kNutritionRevKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if imgid != nil {
			dictionary.updateValue(imgid!, forKey: kNutritionImgidKey)
		}
		if whiteMagic != nil {
			dictionary.updateValue(whiteMagic!, forKey: kNutritionWhiteMagicKey)
		}
		if sizes != nil {
			dictionary.updateValue(sizes!.dictionaryRepresentation(), forKey: kNutritionSizesKey)
		}
		if normalize != nil {
			dictionary.updateValue(normalize!, forKey: kNutritionNormalizeKey)
		}
		if geometry != nil {
			dictionary.updateValue(geometry!, forKey: kNutritionGeometryKey)
		}
		if rev != nil {
			dictionary.updateValue(rev!, forKey: kNutritionRevKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.imgid = aDecoder.decodeObjectForKey(kNutritionImgidKey) as? String
		self.whiteMagic = aDecoder.decodeObjectForKey(kNutritionWhiteMagicKey) as? String
		self.sizes = aDecoder.decodeObjectForKey(kNutritionSizesKey) as? Sizes
		self.normalize = aDecoder.decodeObjectForKey(kNutritionNormalizeKey) as? String
		self.geometry = aDecoder.decodeObjectForKey(kNutritionGeometryKey) as? String
		self.rev = aDecoder.decodeObjectForKey(kNutritionRevKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(imgid, forKey: kNutritionImgidKey)
		aCoder.encodeObject(whiteMagic, forKey: kNutritionWhiteMagicKey)
		aCoder.encodeObject(sizes, forKey: kNutritionSizesKey)
		aCoder.encodeObject(normalize, forKey: kNutritionNormalizeKey)
		aCoder.encodeObject(geometry, forKey: kNutritionGeometryKey)
		aCoder.encodeObject(rev, forKey: kNutritionRevKey)

    }

}
