//
//  Search.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class Search: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kSearchSkipKey: String = "skip"
	internal let kSearchPageSizeKey: String = "page_size"
	internal let kSearchPageKey: String = "page"
	internal let kSearchCountKey: String = "count"
	internal let kSearchProductsKey: String = "products"


    // MARK: Properties
	public var skip: Int?
	public var pageSize: String?
	public var page: Int?
	public var count: String?
	public var products: [Products]?


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
		skip = json[kSearchSkipKey].int
		pageSize = json[kSearchPageSizeKey].string
		page = json[kSearchPageKey].int
		count = json[kSearchCountKey].string
		products = []
		if let items = json[kSearchProductsKey].array {
			for item in items {
				products?.append(Products(json: item))
			}
		} else {
			products = nil
		}

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if skip != nil {
			dictionary.updateValue(skip!, forKey: kSearchSkipKey)
		}
		if pageSize != nil {
			dictionary.updateValue(pageSize!, forKey: kSearchPageSizeKey)
		}
		if page != nil {
			dictionary.updateValue(page!, forKey: kSearchPageKey)
		}
		if count != nil {
			dictionary.updateValue(count!, forKey: kSearchCountKey)
		}
		if products?.count > 0 {
			var temp: [AnyObject] = []
			for item in products! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kSearchProductsKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.skip = aDecoder.decodeObjectForKey(kSearchSkipKey) as? Int
		self.pageSize = aDecoder.decodeObjectForKey(kSearchPageSizeKey) as? String
		self.page = aDecoder.decodeObjectForKey(kSearchPageKey) as? Int
		self.count = aDecoder.decodeObjectForKey(kSearchCountKey) as? String
		self.products = aDecoder.decodeObjectForKey(kSearchProductsKey) as? [Products]

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(skip, forKey: kSearchSkipKey)
		aCoder.encodeObject(pageSize, forKey: kSearchPageSizeKey)
		aCoder.encodeObject(page, forKey: kSearchPageKey)
		aCoder.encodeObject(count, forKey: kSearchCountKey)
		aCoder.encodeObject(products, forKey: kSearchProductsKey)

    }

}
