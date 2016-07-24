//
//  Front.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class Front: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kFrontImgidKey: String = "imgid"
	internal let kFrontWhiteMagicKey: String = "white_magic"
	internal let kFrontSizesKey: String = "sizes"
	internal let kFrontNormalizeKey: String = "normalize"
	internal let kFrontGeometryKey: String = "geometry"
	internal let kFrontRevKey: String = "rev"


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
		imgid = json[kFrontImgidKey].string
		whiteMagic = json[kFrontWhiteMagicKey].string
		sizes = Sizes(json: json[kFrontSizesKey])
		normalize = json[kFrontNormalizeKey].string
		geometry = json[kFrontGeometryKey].string
		rev = json[kFrontRevKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if imgid != nil {
			dictionary.updateValue(imgid!, forKey: kFrontImgidKey)
		}
		if whiteMagic != nil {
			dictionary.updateValue(whiteMagic!, forKey: kFrontWhiteMagicKey)
		}
		if sizes != nil {
			dictionary.updateValue(sizes!.dictionaryRepresentation(), forKey: kFrontSizesKey)
		}
		if normalize != nil {
			dictionary.updateValue(normalize!, forKey: kFrontNormalizeKey)
		}
		if geometry != nil {
			dictionary.updateValue(geometry!, forKey: kFrontGeometryKey)
		}
		if rev != nil {
			dictionary.updateValue(rev!, forKey: kFrontRevKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.imgid = aDecoder.decodeObjectForKey(kFrontImgidKey) as? String
		self.whiteMagic = aDecoder.decodeObjectForKey(kFrontWhiteMagicKey) as? String
		self.sizes = aDecoder.decodeObjectForKey(kFrontSizesKey) as? Sizes
		self.normalize = aDecoder.decodeObjectForKey(kFrontNormalizeKey) as? String
		self.geometry = aDecoder.decodeObjectForKey(kFrontGeometryKey) as? String
		self.rev = aDecoder.decodeObjectForKey(kFrontRevKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(imgid, forKey: kFrontImgidKey)
		aCoder.encodeObject(whiteMagic, forKey: kFrontWhiteMagicKey)
		aCoder.encodeObject(sizes, forKey: kFrontSizesKey)
		aCoder.encodeObject(normalize, forKey: kFrontNormalizeKey)
		aCoder.encodeObject(geometry, forKey: kFrontGeometryKey)
		aCoder.encodeObject(rev, forKey: kFrontRevKey)

    }

}
