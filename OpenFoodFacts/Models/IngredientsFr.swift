//
//  IngredientsFr.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class IngredientsFr: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kIngredientsFrImgidKey: String = "imgid"
	internal let kIngredientsFrWhiteMagicKey: String = "white_magic"
	internal let kIngredientsFrSizesKey: String = "sizes"
	internal let kIngredientsFrNormalizeKey: String = "normalize"
	internal let kIngredientsFrGeometryKey: String = "geometry"
	internal let kIngredientsFrRevKey: String = "rev"


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
		imgid = json[kIngredientsFrImgidKey].string
		whiteMagic = json[kIngredientsFrWhiteMagicKey].string
		sizes = Sizes(json: json[kIngredientsFrSizesKey])
		normalize = json[kIngredientsFrNormalizeKey].string
		geometry = json[kIngredientsFrGeometryKey].string
		rev = json[kIngredientsFrRevKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if imgid != nil {
			dictionary.updateValue(imgid!, forKey: kIngredientsFrImgidKey)
		}
		if whiteMagic != nil {
			dictionary.updateValue(whiteMagic!, forKey: kIngredientsFrWhiteMagicKey)
		}
		if sizes != nil {
			dictionary.updateValue(sizes!.dictionaryRepresentation(), forKey: kIngredientsFrSizesKey)
		}
		if normalize != nil {
			dictionary.updateValue(normalize!, forKey: kIngredientsFrNormalizeKey)
		}
		if geometry != nil {
			dictionary.updateValue(geometry!, forKey: kIngredientsFrGeometryKey)
		}
		if rev != nil {
			dictionary.updateValue(rev!, forKey: kIngredientsFrRevKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.imgid = aDecoder.decodeObjectForKey(kIngredientsFrImgidKey) as? String
		self.whiteMagic = aDecoder.decodeObjectForKey(kIngredientsFrWhiteMagicKey) as? String
		self.sizes = aDecoder.decodeObjectForKey(kIngredientsFrSizesKey) as? Sizes
		self.normalize = aDecoder.decodeObjectForKey(kIngredientsFrNormalizeKey) as? String
		self.geometry = aDecoder.decodeObjectForKey(kIngredientsFrGeometryKey) as? String
		self.rev = aDecoder.decodeObjectForKey(kIngredientsFrRevKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(imgid, forKey: kIngredientsFrImgidKey)
		aCoder.encodeObject(whiteMagic, forKey: kIngredientsFrWhiteMagicKey)
		aCoder.encodeObject(sizes, forKey: kIngredientsFrSizesKey)
		aCoder.encodeObject(normalize, forKey: kIngredientsFrNormalizeKey)
		aCoder.encodeObject(geometry, forKey: kIngredientsFrGeometryKey)
		aCoder.encodeObject(rev, forKey: kIngredientsFrRevKey)

    }

}
