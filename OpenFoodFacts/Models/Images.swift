//
//  Images.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class Images: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
//	internal let kImages9Key: String = "9"
	internal let kImagesIngredientsKey: String = "ingredients"
	internal let kImagesNutritionKey: String = "nutrition"
//	internal let kImages2Key: String = "2"
//	internal let kImages1Key: String = "1"
	internal let kImagesFrontKey: String = "front"
	internal let kImagesNutritionFrKey: String = "nutrition_fr"
//	internal let kImages8Key: String = "8"
//	internal let kImages6Key: String = "6"
//	internal let kImages3Key: String = "3"
//	internal let kImages4Key: String = "4"
	internal let kImagesFrontFrKey: String = "front_fr"
	internal let kImagesIngredientsFrKey: String = "ingredients_fr"
//	internal let kImages7Key: String = "7"
//	internal let kImages10Key: String = "10"
//	internal let kImages5Key: String = "5"


    // MARK: Properties
//	public var 9: 9?
	public var ingredients: Ingredients?
	public var nutrition: Nutrition?
//	public var 2: 2?
//	public var 1: 1?
	public var front: Front?
	public var nutritionFr: NutritionFr?
//	public var 8: 8?
//	public var 6: 6?
//	public var 3: 3?
//	public var 4: 4?
	public var frontFr: FrontFr?
	public var ingredientsFr: IngredientsFr?
//	public var 7: 7?
//	public var 10: 10?
//	public var 5: 5?


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
//		9 = 9(json: json[kImages9Key])
		ingredients = Ingredients(json: json[kImagesIngredientsKey])
		nutrition = Nutrition(json: json[kImagesNutritionKey])
//		2 = 2(json: json[kImages2Key])
//		1 = 1(json: json[kImages1Key])
		front = Front(json: json[kImagesFrontKey])
		nutritionFr = NutritionFr(json: json[kImagesNutritionFrKey])
//		8 = 8(json: json[kImages8Key])
//		6 = 6(json: json[kImages6Key])
//		3 = 3(json: json[kImages3Key])
//		4 = 4(json: json[kImages4Key])
		frontFr = FrontFr(json: json[kImagesFrontFrKey])
		ingredientsFr = IngredientsFr(json: json[kImagesIngredientsFrKey])
//		7 = 7(json: json[kImages7Key])
//		10 = 10(json: json[kImages10Key])
//		5 = 5(json: json[kImages5Key])

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
//		if 9 != nil {
//			dictionary.updateValue(9!.dictionaryRepresentation(), forKey: kImages9Key)
//		}
		if ingredients != nil {
			dictionary.updateValue(ingredients!.dictionaryRepresentation(), forKey: kImagesIngredientsKey)
		}
		if nutrition != nil {
			dictionary.updateValue(nutrition!.dictionaryRepresentation(), forKey: kImagesNutritionKey)
		}
//		if 2 != nil {
//			dictionary.updateValue(2!.dictionaryRepresentation(), forKey: kImages2Key)
//		}
//		if 1 != nil {
//			dictionary.updateValue(1!.dictionaryRepresentation(), forKey: kImages1Key)
//		}
		if front != nil {
			dictionary.updateValue(front!.dictionaryRepresentation(), forKey: kImagesFrontKey)
		}
		if nutritionFr != nil {
			dictionary.updateValue(nutritionFr!.dictionaryRepresentation(), forKey: kImagesNutritionFrKey)
		}
//		if 8 != nil {
//			dictionary.updateValue(8!.dictionaryRepresentation(), forKey: kImages8Key)
//		}
//		if 6 != nil {
//			dictionary.updateValue(6!.dictionaryRepresentation(), forKey: kImages6Key)
//		}
//		if 3 != nil {
//			dictionary.updateValue(3!.dictionaryRepresentation(), forKey: kImages3Key)
//		}
//		if 4 != nil {
//			dictionary.updateValue(4!.dictionaryRepresentation(), forKey: kImages4Key)
//		}
		if frontFr != nil {
			dictionary.updateValue(frontFr!.dictionaryRepresentation(), forKey: kImagesFrontFrKey)
		}
		if ingredientsFr != nil {
			dictionary.updateValue(ingredientsFr!.dictionaryRepresentation(), forKey: kImagesIngredientsFrKey)
		}
//		if 7 != nil {
//			dictionary.updateValue(7!.dictionaryRepresentation(), forKey: kImages7Key)
//		}
//		if 10 != nil {
//			dictionary.updateValue(10!.dictionaryRepresentation(), forKey: kImages10Key)
//		}
//		if 5 != nil {
//			dictionary.updateValue(5!.dictionaryRepresentation(), forKey: kImages5Key)
//		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
//		self.9 = aDecoder.decodeObjectForKey(kImages9Key) as? 9
		self.ingredients = aDecoder.decodeObjectForKey(kImagesIngredientsKey) as? Ingredients
		self.nutrition = aDecoder.decodeObjectForKey(kImagesNutritionKey) as? Nutrition
//		self.2 = aDecoder.decodeObjectForKey(kImages2Key) as? 2
//		self.1 = aDecoder.decodeObjectForKey(kImages1Key) as? 1
		self.front = aDecoder.decodeObjectForKey(kImagesFrontKey) as? Front
		self.nutritionFr = aDecoder.decodeObjectForKey(kImagesNutritionFrKey) as? NutritionFr
//		self.8 = aDecoder.decodeObjectForKey(kImages8Key) as? 8
//		self.6 = aDecoder.decodeObjectForKey(kImages6Key) as? 6
//		self.3 = aDecoder.decodeObjectForKey(kImages3Key) as? 3
//		self.4 = aDecoder.decodeObjectForKey(kImages4Key) as? 4
		self.frontFr = aDecoder.decodeObjectForKey(kImagesFrontFrKey) as? FrontFr
		self.ingredientsFr = aDecoder.decodeObjectForKey(kImagesIngredientsFrKey) as? IngredientsFr
//		self.7 = aDecoder.decodeObjectForKey(kImages7Key) as? 7
//		self.10 = aDecoder.decodeObjectForKey(kImages10Key) as? 10
//		self.5 = aDecoder.decodeObjectForKey(kImages5Key) as? 5

    }

    public func encodeWithCoder(aCoder: NSCoder) {
//		aCoder.encodeObject(9, forKey: kImages9Key)
		aCoder.encodeObject(ingredients, forKey: kImagesIngredientsKey)
		aCoder.encodeObject(nutrition, forKey: kImagesNutritionKey)
//		aCoder.encodeObject(2, forKey: kImages2Key)
//		aCoder.encodeObject(1, forKey: kImages1Key)
		aCoder.encodeObject(front, forKey: kImagesFrontKey)
		aCoder.encodeObject(nutritionFr, forKey: kImagesNutritionFrKey)
//		aCoder.encodeObject(8, forKey: kImages8Key)
//		aCoder.encodeObject(6, forKey: kImages6Key)
//		aCoder.encodeObject(3, forKey: kImages3Key)
//		aCoder.encodeObject(4, forKey: kImages4Key)
		aCoder.encodeObject(frontFr, forKey: kImagesFrontFrKey)
		aCoder.encodeObject(ingredientsFr, forKey: kImagesIngredientsFrKey)
//		aCoder.encodeObject(7, forKey: kImages7Key)
//		aCoder.encodeObject(10, forKey: kImages10Key)
//		aCoder.encodeObject(5, forKey: kImages5Key)

    }

}
