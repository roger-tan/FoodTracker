//
//  10.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class 10: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let k10SizesKey: String = "sizes"
	internal let k10UploadedTKey: String = "uploaded_t"
	internal let k10UploaderKey: String = "uploader"


    // MARK: Properties
	public var sizes: Sizes?
	public var uploadedT: String?
	public var uploader: String?


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
		sizes = Sizes(json: json[k10SizesKey])
		uploadedT = json[k10UploadedTKey].string
		uploader = json[k10UploaderKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if sizes != nil {
			dictionary.updateValue(sizes!.dictionaryRepresentation(), forKey: k10SizesKey)
		}
		if uploadedT != nil {
			dictionary.updateValue(uploadedT!, forKey: k10UploadedTKey)
		}
		if uploader != nil {
			dictionary.updateValue(uploader!, forKey: k10UploaderKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.sizes = aDecoder.decodeObjectForKey(k10SizesKey) as? Sizes
		self.uploadedT = aDecoder.decodeObjectForKey(k10UploadedTKey) as? String
		self.uploader = aDecoder.decodeObjectForKey(k10UploaderKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(sizes, forKey: k10SizesKey)
		aCoder.encodeObject(uploadedT, forKey: k10UploadedTKey)
		aCoder.encodeObject(uploader, forKey: k10UploaderKey)

    }

}
