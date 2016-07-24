//
//  NutritionFr.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class NutritionFr: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kNutritionFrImgidKey: String = "imgid"
	internal let kNutritionFrWhiteMagicKey: String = "white_magic"
	internal let kNutritionFrSizesKey: String = "sizes"
	internal let kNutritionFrNormalizeKey: String = "normalize"
	internal let kNutritionFrGeometryKey: String = "geometry"
	internal let kNutritionFrRevKey: String = "rev"


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
		imgid = json[kNutritionFrImgidKey].string
		whiteMagic = json[kNutritionFrWhiteMagicKey].string
		sizes = Sizes(json: json[kNutritionFrSizesKey])
		normalize = json[kNutritionFrNormalizeKey].string
		geometry = json[kNutritionFrGeometryKey].string
		rev = json[kNutritionFrRevKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if imgid != nil {
			dictionary.updateValue(imgid!, forKey: kNutritionFrImgidKey)
		}
		if whiteMagic != nil {
			dictionary.updateValue(whiteMagic!, forKey: kNutritionFrWhiteMagicKey)
		}
		if sizes != nil {
			dictionary.updateValue(sizes!.dictionaryRepresentation(), forKey: kNutritionFrSizesKey)
		}
		if normalize != nil {
			dictionary.updateValue(normalize!, forKey: kNutritionFrNormalizeKey)
		}
		if geometry != nil {
			dictionary.updateValue(geometry!, forKey: kNutritionFrGeometryKey)
		}
		if rev != nil {
			dictionary.updateValue(rev!, forKey: kNutritionFrRevKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.imgid = aDecoder.decodeObjectForKey(kNutritionFrImgidKey) as? String
		self.whiteMagic = aDecoder.decodeObjectForKey(kNutritionFrWhiteMagicKey) as? String
		self.sizes = aDecoder.decodeObjectForKey(kNutritionFrSizesKey) as? Sizes
		self.normalize = aDecoder.decodeObjectForKey(kNutritionFrNormalizeKey) as? String
		self.geometry = aDecoder.decodeObjectForKey(kNutritionFrGeometryKey) as? String
		self.rev = aDecoder.decodeObjectForKey(kNutritionFrRevKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(imgid, forKey: kNutritionFrImgidKey)
		aCoder.encodeObject(whiteMagic, forKey: kNutritionFrWhiteMagicKey)
		aCoder.encodeObject(sizes, forKey: kNutritionFrSizesKey)
		aCoder.encodeObject(normalize, forKey: kNutritionFrNormalizeKey)
		aCoder.encodeObject(geometry, forKey: kNutritionFrGeometryKey)
		aCoder.encodeObject(rev, forKey: kNutritionFrRevKey)

    }

}
