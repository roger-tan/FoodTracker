//
//  FrontFr.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class FrontFr: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kFrontFrImgidKey: String = "imgid"
	internal let kFrontFrWhiteMagicKey: String = "white_magic"
	internal let kFrontFrSizesKey: String = "sizes"
	internal let kFrontFrNormalizeKey: String = "normalize"
	internal let kFrontFrGeometryKey: String = "geometry"
	internal let kFrontFrRevKey: String = "rev"


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
		imgid = json[kFrontFrImgidKey].string
		whiteMagic = json[kFrontFrWhiteMagicKey].string
		sizes = Sizes(json: json[kFrontFrSizesKey])
		normalize = json[kFrontFrNormalizeKey].string
		geometry = json[kFrontFrGeometryKey].string
		rev = json[kFrontFrRevKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if imgid != nil {
			dictionary.updateValue(imgid!, forKey: kFrontFrImgidKey)
		}
		if whiteMagic != nil {
			dictionary.updateValue(whiteMagic!, forKey: kFrontFrWhiteMagicKey)
		}
		if sizes != nil {
			dictionary.updateValue(sizes!.dictionaryRepresentation(), forKey: kFrontFrSizesKey)
		}
		if normalize != nil {
			dictionary.updateValue(normalize!, forKey: kFrontFrNormalizeKey)
		}
		if geometry != nil {
			dictionary.updateValue(geometry!, forKey: kFrontFrGeometryKey)
		}
		if rev != nil {
			dictionary.updateValue(rev!, forKey: kFrontFrRevKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.imgid = aDecoder.decodeObjectForKey(kFrontFrImgidKey) as? String
		self.whiteMagic = aDecoder.decodeObjectForKey(kFrontFrWhiteMagicKey) as? String
		self.sizes = aDecoder.decodeObjectForKey(kFrontFrSizesKey) as? Sizes
		self.normalize = aDecoder.decodeObjectForKey(kFrontFrNormalizeKey) as? String
		self.geometry = aDecoder.decodeObjectForKey(kFrontFrGeometryKey) as? String
		self.rev = aDecoder.decodeObjectForKey(kFrontFrRevKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(imgid, forKey: kFrontFrImgidKey)
		aCoder.encodeObject(whiteMagic, forKey: kFrontFrWhiteMagicKey)
		aCoder.encodeObject(sizes, forKey: kFrontFrSizesKey)
		aCoder.encodeObject(normalize, forKey: kFrontFrNormalizeKey)
		aCoder.encodeObject(geometry, forKey: kFrontFrGeometryKey)
		aCoder.encodeObject(rev, forKey: kFrontFrRevKey)

    }

}
