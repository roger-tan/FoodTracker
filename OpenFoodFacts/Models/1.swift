//
//  1.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class 1: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let k1UploaderKey: String = "uploader"
	internal let k1UploadedTKey: String = "uploaded_t"
	internal let k1SizesKey: String = "sizes"


    // MARK: Properties
	public var uploader: String?
	public var uploadedT: Int?
	public var sizes: Sizes?


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
		uploader = json[k1UploaderKey].string
		uploadedT = json[k1UploadedTKey].int
		sizes = Sizes(json: json[k1SizesKey])

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if uploader != nil {
			dictionary.updateValue(uploader!, forKey: k1UploaderKey)
		}
		if uploadedT != nil {
			dictionary.updateValue(uploadedT!, forKey: k1UploadedTKey)
		}
		if sizes != nil {
			dictionary.updateValue(sizes!.dictionaryRepresentation(), forKey: k1SizesKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.uploader = aDecoder.decodeObjectForKey(k1UploaderKey) as? String
		self.uploadedT = aDecoder.decodeObjectForKey(k1UploadedTKey) as? Int
		self.sizes = aDecoder.decodeObjectForKey(k1SizesKey) as? Sizes

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(uploader, forKey: k1UploaderKey)
		aCoder.encodeObject(uploadedT, forKey: k1UploadedTKey)
		aCoder.encodeObject(sizes, forKey: k1SizesKey)

    }

}