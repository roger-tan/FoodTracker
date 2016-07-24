//
//  5.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class 5: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let k5UploaderKey: String = "uploader"
	internal let k5UploadedTKey: String = "uploaded_t"
	internal let k5SizesKey: String = "sizes"


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
		uploader = json[k5UploaderKey].string
		uploadedT = json[k5UploadedTKey].int
		sizes = Sizes(json: json[k5SizesKey])

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if uploader != nil {
			dictionary.updateValue(uploader!, forKey: k5UploaderKey)
		}
		if uploadedT != nil {
			dictionary.updateValue(uploadedT!, forKey: k5UploadedTKey)
		}
		if sizes != nil {
			dictionary.updateValue(sizes!.dictionaryRepresentation(), forKey: k5SizesKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.uploader = aDecoder.decodeObjectForKey(k5UploaderKey) as? String
		self.uploadedT = aDecoder.decodeObjectForKey(k5UploadedTKey) as? Int
		self.sizes = aDecoder.decodeObjectForKey(k5SizesKey) as? Sizes

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(uploader, forKey: k5UploaderKey)
		aCoder.encodeObject(uploadedT, forKey: k5UploadedTKey)
		aCoder.encodeObject(sizes, forKey: k5SizesKey)

    }

}
