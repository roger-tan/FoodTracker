//
//  Nutriments.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class Nutriments: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kNutrimentsCalciumServingKey: String = "calcium_serving"
	internal let kNutrimentsEnergy100gKey: String = "energy_100g"
	internal let kNutrimentsCarbohydratesUnitKey: String = "carbohydrates_unit"
	internal let kNutrimentsFiber100gKey: String = "fiber_100g"
	internal let kNutrimentsAlcoholServingKey: String = "alcohol_serving"
	internal let kNutrimentsCarbohydratesValueKey: String = "carbohydrates_value"
	internal let kNutrimentsSaltServingKey: String = "salt_serving"
	internal let kNutrimentsVitaminB1ServingKey: String = "vitamin-b1_serving"
	internal let kNutrimentsFatValueKey: String = "fat_value"
	internal let kNutrimentsMagnesium100gKey: String = "magnesium_100g"
	internal let kNutrimentsVitamineB1100gKey: String = "vitamine-b1_100g"
	internal let kNutrimentsNutritionScoreFr100gKey: String = "nutrition-score-fr_100g"
	internal let kNutrimentsMagnesiumUnitKey: String = "magnesium_unit"
	internal let kNutrimentsIronLabelKey: String = "iron_label"
	internal let kNutrimentsPhosphorusServingKey: String = "phosphorus_serving"
	internal let kNutrimentsIronServingKey: String = "iron_serving"
	internal let kNutrimentsProteinsUnitKey: String = "proteins_unit"
	internal let kNutrimentsIronKey: String = "iron"
	internal let kNutrimentsPhosphore100gKey: String = "phosphore_100g"
	internal let kNutrimentsFiberKey: String = "fiber"
	internal let kNutrimentsFatUnitKey: String = "fat_unit"
	internal let kNutrimentsNutritionScoreUk100gKey: String = "nutrition-score-uk_100g"
	internal let kNutrimentsSugarsUnitKey: String = "sugars_unit"
	internal let kNutrimentsFiberServingKey: String = "fiber_serving"
	internal let kNutrimentsFat100gKey: String = "fat_100g"
	internal let kNutrimentsCalciumLabelKey: String = "calcium_label"
	internal let kNutrimentsSodiumValueKey: String = "sodium_value"
	internal let kNutrimentsSugarsKey: String = "sugars"
	internal let kNutrimentsCarbohydratesKey: String = "carbohydrates"
	internal let kNutrimentsPhosphorusUnitKey: String = "phosphorus_unit"
	internal let kNutrimentsCarbohydrates100gKey: String = "carbohydrates_100g"
	internal let kNutrimentsMagnesiumServingKey: String = "magnesium_serving"
	internal let kNutrimentsCalciumValueKey: String = "calcium_value"
	internal let kNutrimentsAlcoholKey: String = "alcohol"
	internal let kNutrimentsSaturatedFatServingKey: String = "saturated-fat_serving"
	internal let kNutrimentsSaltUnitKey: String = "salt_unit"
	internal let kNutrimentsSugars100gKey: String = "sugars_100g"
	internal let kNutrimentsSugarsValueKey: String = "sugars_value"
	internal let kNutrimentsIronValueKey: String = "iron_value"
	internal let kNutrimentsSalt100gKey: String = "salt_100g"
	internal let kNutrimentsCalcium100gKey: String = "calcium_100g"
	internal let kNutrimentsNutritionScoreFrKey: String = "nutrition-score-fr"
	internal let kNutrimentsIronUnitKey: String = "iron_unit"
	internal let kNutrimentsCalciumUnitKey: String = "calcium_unit"
	internal let kNutrimentsVitaminB1Key: String = "vitamin-b1"
	internal let kNutrimentsPhosphorusLabelKey: String = "phosphorus_label"
	internal let kNutrimentsVitaminB1UnitKey: String = "vitamin-b1_unit"
	internal let kNutrimentsFatKey: String = "fat"
	internal let kNutrimentsProteinsKey: String = "proteins"
	internal let kNutrimentsVitaminB1100gKey: String = "vitamin-b1_100g"
	internal let kNutrimentsSaturatedFatUnitKey: String = "saturated-fat_unit"
	internal let kNutrimentsProteinsServingKey: String = "proteins_serving"
	internal let kNutrimentsPhosphoreServingKey: String = "phosphore_serving"
	internal let kNutrimentsSodium100gKey: String = "sodium_100g"
	internal let kNutrimentsAlcohol100gKey: String = "alcohol_100g"
	internal let kNutrimentsEnergyUnitKey: String = "energy_unit"
	internal let kNutrimentsNutritionScoreUkKey: String = "nutrition-score-uk"
	internal let kNutrimentsMagnesiumKey: String = "magnesium"
	internal let kNutrimentsAlcoholValueKey: String = "alcohol_value"
	internal let kNutrimentsSugarsServingKey: String = "sugars_serving"
	internal let kNutrimentsVitaminB1LabelKey: String = "vitamin-b1_label"
	internal let kNutrimentsCalciumKey: String = "calcium"
	internal let kNutrimentsMagnesiumLabelKey: String = "magnesium_label"
	internal let kNutrimentsFiberValueKey: String = "fiber_value"
	internal let kNutrimentsSodiumKey: String = "sodium"
	internal let kNutrimentsSodiumServingKey: String = "sodium_serving"
	internal let kNutrimentsCarbohydratesServingKey: String = "carbohydrates_serving"
	internal let kNutrimentsFatServingKey: String = "fat_serving"
	internal let kNutrimentsFiberUnitKey: String = "fiber_unit"
	internal let kNutrimentsSaturatedFatKey: String = "saturated-fat"
	internal let kNutrimentsPhosphorusValueKey: String = "phosphorus_value"
	internal let kNutrimentsEnergyServingKey: String = "energy_serving"
	internal let kNutrimentsPhosphorusKey: String = "phosphorus"
	internal let kNutrimentsSaltKey: String = "salt"
	internal let kNutrimentsProteins100gKey: String = "proteins_100g"
	internal let kNutrimentsPhosphorus100gKey: String = "phosphorus_100g"
	internal let kNutrimentsEnergyValueKey: String = "energy_value"
	internal let kNutrimentsSaltValueKey: String = "salt_value"
	internal let kNutrimentsSodiumUnitKey: String = "sodium_unit"
	internal let kNutrimentsVitaminB1ValueKey: String = "vitamin-b1_value"
	internal let kNutrimentsSaturatedFatValueKey: String = "saturated-fat_value"
	internal let kNutrimentsAlcoholUnitKey: String = "alcohol_unit"
	internal let kNutrimentsMagnesiumValueKey: String = "magnesium_value"
	internal let kNutrimentsSaturatedFat100gKey: String = "saturated-fat_100g"
	internal let kNutrimentsProteinsValueKey: String = "proteins_value"
	internal let kNutrimentsEnergyKey: String = "energy"
	internal let kNutrimentsVitamineB1ServingKey: String = "vitamine-b1_serving"
	internal let kNutrimentsIron100gKey: String = "iron_100g"


    // MARK: Properties
	public var calciumServing: String?
	public var energy100g: String?
	public var carbohydratesUnit: String?
	public var fiber100g: String?
	public var alcoholServing: String?
	public var carbohydratesValue: String?
	public var saltServing: String?
	public var vitaminB1Serving: String?
	public var fatValue: String?
	public var magnesium100g: String?
	public var vitamineB1100g: String?
	public var nutritionScoreFr100g: String?
	public var magnesiumUnit: String?
	public var ironLabel: String?
	public var phosphorusServing: String?
	public var ironServing: String?
	public var proteinsUnit: String?
	public var iron: String?
	public var phosphore100g: String?
	public var fiber: String?
	public var fatUnit: String?
	public var nutritionScoreUk100g: String?
	public var sugarsUnit: String?
	public var fiberServing: String?
	public var fat100g: String?
	public var calciumLabel: String?
	public var sodiumValue: String?
	public var sugars: String?
	public var carbohydrates: String?
	public var phosphorusUnit: String?
	public var carbohydrates100g: String?
	public var magnesiumServing: String?
	public var calciumValue: String?
	public var alcohol: String?
	public var saturatedFatServing: String?
	public var saltUnit: String?
	public var sugars100g: String?
	public var sugarsValue: String?
	public var ironValue: String?
	public var salt100g: String?
	public var calcium100g: String?
	public var nutritionScoreFr: String?
	public var ironUnit: String?
	public var calciumUnit: String?
	public var vitaminB1: String?
	public var phosphorusLabel: String?
	public var vitaminB1Unit: String?
	public var fat: String?
	public var proteins: String?
	public var vitaminB1100g: String?
	public var saturatedFatUnit: String?
	public var proteinsServing: String?
	public var phosphoreServing: String?
	public var sodium100g: String?
	public var alcohol100g: String?
	public var energyUnit: String?
	public var nutritionScoreUk: String?
	public var magnesium: String?
	public var alcoholValue: String?
	public var sugarsServing: String?
	public var vitaminB1Label: String?
	public var calcium: String?
	public var magnesiumLabel: String?
	public var fiberValue: String?
	public var sodium: String?
	public var sodiumServing: String?
	public var carbohydratesServing: String?
	public var fatServing: String?
	public var fiberUnit: String?
	public var saturatedFat: String?
	public var phosphorusValue: String?
	public var energyServing: String?
	public var phosphorus: String?
	public var salt: String?
	public var proteins100g: String?
	public var phosphorus100g: String?
	public var energyValue: String?
	public var saltValue: String?
	public var sodiumUnit: String?
	public var vitaminB1Value: String?
	public var saturatedFatValue: String?
	public var alcoholUnit: String?
	public var magnesiumValue: String?
	public var saturatedFat100g: String?
	public var proteinsValue: String?
	public var energy: String?
	public var vitamineB1Serving: String?
	public var iron100g: String?


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
		calciumServing = json[kNutrimentsCalciumServingKey].string
		energy100g = json[kNutrimentsEnergy100gKey].string
		carbohydratesUnit = json[kNutrimentsCarbohydratesUnitKey].string
		fiber100g = json[kNutrimentsFiber100gKey].string
		alcoholServing = json[kNutrimentsAlcoholServingKey].string
		carbohydratesValue = json[kNutrimentsCarbohydratesValueKey].string
		saltServing = json[kNutrimentsSaltServingKey].string
		vitaminB1Serving = json[kNutrimentsVitaminB1ServingKey].string
		fatValue = json[kNutrimentsFatValueKey].string
		magnesium100g = json[kNutrimentsMagnesium100gKey].string
		vitamineB1100g = json[kNutrimentsVitamineB1100gKey].string
		nutritionScoreFr100g = json[kNutrimentsNutritionScoreFr100gKey].string
		magnesiumUnit = json[kNutrimentsMagnesiumUnitKey].string
		ironLabel = json[kNutrimentsIronLabelKey].string
		phosphorusServing = json[kNutrimentsPhosphorusServingKey].string
		ironServing = json[kNutrimentsIronServingKey].string
		proteinsUnit = json[kNutrimentsProteinsUnitKey].string
		iron = json[kNutrimentsIronKey].string
		phosphore100g = json[kNutrimentsPhosphore100gKey].string
		fiber = json[kNutrimentsFiberKey].string
		fatUnit = json[kNutrimentsFatUnitKey].string
		nutritionScoreUk100g = json[kNutrimentsNutritionScoreUk100gKey].string
		sugarsUnit = json[kNutrimentsSugarsUnitKey].string
		fiberServing = json[kNutrimentsFiberServingKey].string
		fat100g = json[kNutrimentsFat100gKey].string
		calciumLabel = json[kNutrimentsCalciumLabelKey].string
		sodiumValue = json[kNutrimentsSodiumValueKey].string
		sugars = json[kNutrimentsSugarsKey].string
		carbohydrates = json[kNutrimentsCarbohydratesKey].string
		phosphorusUnit = json[kNutrimentsPhosphorusUnitKey].string
		carbohydrates100g = json[kNutrimentsCarbohydrates100gKey].string
		magnesiumServing = json[kNutrimentsMagnesiumServingKey].string
		calciumValue = json[kNutrimentsCalciumValueKey].string
		alcohol = json[kNutrimentsAlcoholKey].string
		saturatedFatServing = json[kNutrimentsSaturatedFatServingKey].string
		saltUnit = json[kNutrimentsSaltUnitKey].string
		sugars100g = json[kNutrimentsSugars100gKey].string
		sugarsValue = json[kNutrimentsSugarsValueKey].string
		ironValue = json[kNutrimentsIronValueKey].string
		salt100g = json[kNutrimentsSalt100gKey].string
		calcium100g = json[kNutrimentsCalcium100gKey].string
		nutritionScoreFr = json[kNutrimentsNutritionScoreFrKey].string
		ironUnit = json[kNutrimentsIronUnitKey].string
		calciumUnit = json[kNutrimentsCalciumUnitKey].string
		vitaminB1 = json[kNutrimentsVitaminB1Key].string
		phosphorusLabel = json[kNutrimentsPhosphorusLabelKey].string
		vitaminB1Unit = json[kNutrimentsVitaminB1UnitKey].string
		fat = json[kNutrimentsFatKey].string
		proteins = json[kNutrimentsProteinsKey].string
		vitaminB1100g = json[kNutrimentsVitaminB1100gKey].string
		saturatedFatUnit = json[kNutrimentsSaturatedFatUnitKey].string
		proteinsServing = json[kNutrimentsProteinsServingKey].string
		phosphoreServing = json[kNutrimentsPhosphoreServingKey].string
		sodium100g = json[kNutrimentsSodium100gKey].string
		alcohol100g = json[kNutrimentsAlcohol100gKey].string
		energyUnit = json[kNutrimentsEnergyUnitKey].string
		nutritionScoreUk = json[kNutrimentsNutritionScoreUkKey].string
		magnesium = json[kNutrimentsMagnesiumKey].string
		alcoholValue = json[kNutrimentsAlcoholValueKey].string
		sugarsServing = json[kNutrimentsSugarsServingKey].string
		vitaminB1Label = json[kNutrimentsVitaminB1LabelKey].string
		calcium = json[kNutrimentsCalciumKey].string
		magnesiumLabel = json[kNutrimentsMagnesiumLabelKey].string
		fiberValue = json[kNutrimentsFiberValueKey].string
		sodium = json[kNutrimentsSodiumKey].string
		sodiumServing = json[kNutrimentsSodiumServingKey].string
		carbohydratesServing = json[kNutrimentsCarbohydratesServingKey].string
		fatServing = json[kNutrimentsFatServingKey].string
		fiberUnit = json[kNutrimentsFiberUnitKey].string
		saturatedFat = json[kNutrimentsSaturatedFatKey].string
		phosphorusValue = json[kNutrimentsPhosphorusValueKey].string
		energyServing = json[kNutrimentsEnergyServingKey].string
		phosphorus = json[kNutrimentsPhosphorusKey].string
		salt = json[kNutrimentsSaltKey].string
		proteins100g = json[kNutrimentsProteins100gKey].string
		phosphorus100g = json[kNutrimentsPhosphorus100gKey].string
		energyValue = json[kNutrimentsEnergyValueKey].string
		saltValue = json[kNutrimentsSaltValueKey].string
		sodiumUnit = json[kNutrimentsSodiumUnitKey].string
		vitaminB1Value = json[kNutrimentsVitaminB1ValueKey].string
		saturatedFatValue = json[kNutrimentsSaturatedFatValueKey].string
		alcoholUnit = json[kNutrimentsAlcoholUnitKey].string
		magnesiumValue = json[kNutrimentsMagnesiumValueKey].string
		saturatedFat100g = json[kNutrimentsSaturatedFat100gKey].string
		proteinsValue = json[kNutrimentsProteinsValueKey].string
		energy = json[kNutrimentsEnergyKey].string
		vitamineB1Serving = json[kNutrimentsVitamineB1ServingKey].string
		iron100g = json[kNutrimentsIron100gKey].string

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if calciumServing != nil {
			dictionary.updateValue(calciumServing!, forKey: kNutrimentsCalciumServingKey)
		}
		if energy100g != nil {
			dictionary.updateValue(energy100g!, forKey: kNutrimentsEnergy100gKey)
		}
		if carbohydratesUnit != nil {
			dictionary.updateValue(carbohydratesUnit!, forKey: kNutrimentsCarbohydratesUnitKey)
		}
		if fiber100g != nil {
			dictionary.updateValue(fiber100g!, forKey: kNutrimentsFiber100gKey)
		}
		if alcoholServing != nil {
			dictionary.updateValue(alcoholServing!, forKey: kNutrimentsAlcoholServingKey)
		}
		if carbohydratesValue != nil {
			dictionary.updateValue(carbohydratesValue!, forKey: kNutrimentsCarbohydratesValueKey)
		}
		if saltServing != nil {
			dictionary.updateValue(saltServing!, forKey: kNutrimentsSaltServingKey)
		}
		if vitaminB1Serving != nil {
			dictionary.updateValue(vitaminB1Serving!, forKey: kNutrimentsVitaminB1ServingKey)
		}
		if fatValue != nil {
			dictionary.updateValue(fatValue!, forKey: kNutrimentsFatValueKey)
		}
		if magnesium100g != nil {
			dictionary.updateValue(magnesium100g!, forKey: kNutrimentsMagnesium100gKey)
		}
		if vitamineB1100g != nil {
			dictionary.updateValue(vitamineB1100g!, forKey: kNutrimentsVitamineB1100gKey)
		}
		if nutritionScoreFr100g != nil {
			dictionary.updateValue(nutritionScoreFr100g!, forKey: kNutrimentsNutritionScoreFr100gKey)
		}
		if magnesiumUnit != nil {
			dictionary.updateValue(magnesiumUnit!, forKey: kNutrimentsMagnesiumUnitKey)
		}
		if ironLabel != nil {
			dictionary.updateValue(ironLabel!, forKey: kNutrimentsIronLabelKey)
		}
		if phosphorusServing != nil {
			dictionary.updateValue(phosphorusServing!, forKey: kNutrimentsPhosphorusServingKey)
		}
		if ironServing != nil {
			dictionary.updateValue(ironServing!, forKey: kNutrimentsIronServingKey)
		}
		if proteinsUnit != nil {
			dictionary.updateValue(proteinsUnit!, forKey: kNutrimentsProteinsUnitKey)
		}
		if iron != nil {
			dictionary.updateValue(iron!, forKey: kNutrimentsIronKey)
		}
		if phosphore100g != nil {
			dictionary.updateValue(phosphore100g!, forKey: kNutrimentsPhosphore100gKey)
		}
		if fiber != nil {
			dictionary.updateValue(fiber!, forKey: kNutrimentsFiberKey)
		}
		if fatUnit != nil {
			dictionary.updateValue(fatUnit!, forKey: kNutrimentsFatUnitKey)
		}
		if nutritionScoreUk100g != nil {
			dictionary.updateValue(nutritionScoreUk100g!, forKey: kNutrimentsNutritionScoreUk100gKey)
		}
		if sugarsUnit != nil {
			dictionary.updateValue(sugarsUnit!, forKey: kNutrimentsSugarsUnitKey)
		}
		if fiberServing != nil {
			dictionary.updateValue(fiberServing!, forKey: kNutrimentsFiberServingKey)
		}
		if fat100g != nil {
			dictionary.updateValue(fat100g!, forKey: kNutrimentsFat100gKey)
		}
		if calciumLabel != nil {
			dictionary.updateValue(calciumLabel!, forKey: kNutrimentsCalciumLabelKey)
		}
		if sodiumValue != nil {
			dictionary.updateValue(sodiumValue!, forKey: kNutrimentsSodiumValueKey)
		}
		if sugars != nil {
			dictionary.updateValue(sugars!, forKey: kNutrimentsSugarsKey)
		}
		if carbohydrates != nil {
			dictionary.updateValue(carbohydrates!, forKey: kNutrimentsCarbohydratesKey)
		}
		if phosphorusUnit != nil {
			dictionary.updateValue(phosphorusUnit!, forKey: kNutrimentsPhosphorusUnitKey)
		}
		if carbohydrates100g != nil {
			dictionary.updateValue(carbohydrates100g!, forKey: kNutrimentsCarbohydrates100gKey)
		}
		if magnesiumServing != nil {
			dictionary.updateValue(magnesiumServing!, forKey: kNutrimentsMagnesiumServingKey)
		}
		if calciumValue != nil {
			dictionary.updateValue(calciumValue!, forKey: kNutrimentsCalciumValueKey)
		}
		if alcohol != nil {
			dictionary.updateValue(alcohol!, forKey: kNutrimentsAlcoholKey)
		}
		if saturatedFatServing != nil {
			dictionary.updateValue(saturatedFatServing!, forKey: kNutrimentsSaturatedFatServingKey)
		}
		if saltUnit != nil {
			dictionary.updateValue(saltUnit!, forKey: kNutrimentsSaltUnitKey)
		}
		if sugars100g != nil {
			dictionary.updateValue(sugars100g!, forKey: kNutrimentsSugars100gKey)
		}
		if sugarsValue != nil {
			dictionary.updateValue(sugarsValue!, forKey: kNutrimentsSugarsValueKey)
		}
		if ironValue != nil {
			dictionary.updateValue(ironValue!, forKey: kNutrimentsIronValueKey)
		}
		if salt100g != nil {
			dictionary.updateValue(salt100g!, forKey: kNutrimentsSalt100gKey)
		}
		if calcium100g != nil {
			dictionary.updateValue(calcium100g!, forKey: kNutrimentsCalcium100gKey)
		}
		if nutritionScoreFr != nil {
			dictionary.updateValue(nutritionScoreFr!, forKey: kNutrimentsNutritionScoreFrKey)
		}
		if ironUnit != nil {
			dictionary.updateValue(ironUnit!, forKey: kNutrimentsIronUnitKey)
		}
		if calciumUnit != nil {
			dictionary.updateValue(calciumUnit!, forKey: kNutrimentsCalciumUnitKey)
		}
		if vitaminB1 != nil {
			dictionary.updateValue(vitaminB1!, forKey: kNutrimentsVitaminB1Key)
		}
		if phosphorusLabel != nil {
			dictionary.updateValue(phosphorusLabel!, forKey: kNutrimentsPhosphorusLabelKey)
		}
		if vitaminB1Unit != nil {
			dictionary.updateValue(vitaminB1Unit!, forKey: kNutrimentsVitaminB1UnitKey)
		}
		if fat != nil {
			dictionary.updateValue(fat!, forKey: kNutrimentsFatKey)
		}
		if proteins != nil {
			dictionary.updateValue(proteins!, forKey: kNutrimentsProteinsKey)
		}
		if vitaminB1100g != nil {
			dictionary.updateValue(vitaminB1100g!, forKey: kNutrimentsVitaminB1100gKey)
		}
		if saturatedFatUnit != nil {
			dictionary.updateValue(saturatedFatUnit!, forKey: kNutrimentsSaturatedFatUnitKey)
		}
		if proteinsServing != nil {
			dictionary.updateValue(proteinsServing!, forKey: kNutrimentsProteinsServingKey)
		}
		if phosphoreServing != nil {
			dictionary.updateValue(phosphoreServing!, forKey: kNutrimentsPhosphoreServingKey)
		}
		if sodium100g != nil {
			dictionary.updateValue(sodium100g!, forKey: kNutrimentsSodium100gKey)
		}
		if alcohol100g != nil {
			dictionary.updateValue(alcohol100g!, forKey: kNutrimentsAlcohol100gKey)
		}
		if energyUnit != nil {
			dictionary.updateValue(energyUnit!, forKey: kNutrimentsEnergyUnitKey)
		}
		if nutritionScoreUk != nil {
			dictionary.updateValue(nutritionScoreUk!, forKey: kNutrimentsNutritionScoreUkKey)
		}
		if magnesium != nil {
			dictionary.updateValue(magnesium!, forKey: kNutrimentsMagnesiumKey)
		}
		if alcoholValue != nil {
			dictionary.updateValue(alcoholValue!, forKey: kNutrimentsAlcoholValueKey)
		}
		if sugarsServing != nil {
			dictionary.updateValue(sugarsServing!, forKey: kNutrimentsSugarsServingKey)
		}
		if vitaminB1Label != nil {
			dictionary.updateValue(vitaminB1Label!, forKey: kNutrimentsVitaminB1LabelKey)
		}
		if calcium != nil {
			dictionary.updateValue(calcium!, forKey: kNutrimentsCalciumKey)
		}
		if magnesiumLabel != nil {
			dictionary.updateValue(magnesiumLabel!, forKey: kNutrimentsMagnesiumLabelKey)
		}
		if fiberValue != nil {
			dictionary.updateValue(fiberValue!, forKey: kNutrimentsFiberValueKey)
		}
		if sodium != nil {
			dictionary.updateValue(sodium!, forKey: kNutrimentsSodiumKey)
		}
		if sodiumServing != nil {
			dictionary.updateValue(sodiumServing!, forKey: kNutrimentsSodiumServingKey)
		}
		if carbohydratesServing != nil {
			dictionary.updateValue(carbohydratesServing!, forKey: kNutrimentsCarbohydratesServingKey)
		}
		if fatServing != nil {
			dictionary.updateValue(fatServing!, forKey: kNutrimentsFatServingKey)
		}
		if fiberUnit != nil {
			dictionary.updateValue(fiberUnit!, forKey: kNutrimentsFiberUnitKey)
		}
		if saturatedFat != nil {
			dictionary.updateValue(saturatedFat!, forKey: kNutrimentsSaturatedFatKey)
		}
		if phosphorusValue != nil {
			dictionary.updateValue(phosphorusValue!, forKey: kNutrimentsPhosphorusValueKey)
		}
		if energyServing != nil {
			dictionary.updateValue(energyServing!, forKey: kNutrimentsEnergyServingKey)
		}
		if phosphorus != nil {
			dictionary.updateValue(phosphorus!, forKey: kNutrimentsPhosphorusKey)
		}
		if salt != nil {
			dictionary.updateValue(salt!, forKey: kNutrimentsSaltKey)
		}
		if proteins100g != nil {
			dictionary.updateValue(proteins100g!, forKey: kNutrimentsProteins100gKey)
		}
		if phosphorus100g != nil {
			dictionary.updateValue(phosphorus100g!, forKey: kNutrimentsPhosphorus100gKey)
		}
		if energyValue != nil {
			dictionary.updateValue(energyValue!, forKey: kNutrimentsEnergyValueKey)
		}
		if saltValue != nil {
			dictionary.updateValue(saltValue!, forKey: kNutrimentsSaltValueKey)
		}
		if sodiumUnit != nil {
			dictionary.updateValue(sodiumUnit!, forKey: kNutrimentsSodiumUnitKey)
		}
		if vitaminB1Value != nil {
			dictionary.updateValue(vitaminB1Value!, forKey: kNutrimentsVitaminB1ValueKey)
		}
		if saturatedFatValue != nil {
			dictionary.updateValue(saturatedFatValue!, forKey: kNutrimentsSaturatedFatValueKey)
		}
		if alcoholUnit != nil {
			dictionary.updateValue(alcoholUnit!, forKey: kNutrimentsAlcoholUnitKey)
		}
		if magnesiumValue != nil {
			dictionary.updateValue(magnesiumValue!, forKey: kNutrimentsMagnesiumValueKey)
		}
		if saturatedFat100g != nil {
			dictionary.updateValue(saturatedFat100g!, forKey: kNutrimentsSaturatedFat100gKey)
		}
		if proteinsValue != nil {
			dictionary.updateValue(proteinsValue!, forKey: kNutrimentsProteinsValueKey)
		}
		if energy != nil {
			dictionary.updateValue(energy!, forKey: kNutrimentsEnergyKey)
		}
		if vitamineB1Serving != nil {
			dictionary.updateValue(vitamineB1Serving!, forKey: kNutrimentsVitamineB1ServingKey)
		}
		if iron100g != nil {
			dictionary.updateValue(iron100g!, forKey: kNutrimentsIron100gKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.calciumServing = aDecoder.decodeObjectForKey(kNutrimentsCalciumServingKey) as? String
		self.energy100g = aDecoder.decodeObjectForKey(kNutrimentsEnergy100gKey) as? String
		self.carbohydratesUnit = aDecoder.decodeObjectForKey(kNutrimentsCarbohydratesUnitKey) as? String
		self.fiber100g = aDecoder.decodeObjectForKey(kNutrimentsFiber100gKey) as? String
		self.alcoholServing = aDecoder.decodeObjectForKey(kNutrimentsAlcoholServingKey) as? String
		self.carbohydratesValue = aDecoder.decodeObjectForKey(kNutrimentsCarbohydratesValueKey) as? String
		self.saltServing = aDecoder.decodeObjectForKey(kNutrimentsSaltServingKey) as? String
		self.vitaminB1Serving = aDecoder.decodeObjectForKey(kNutrimentsVitaminB1ServingKey) as? String
		self.fatValue = aDecoder.decodeObjectForKey(kNutrimentsFatValueKey) as? String
		self.magnesium100g = aDecoder.decodeObjectForKey(kNutrimentsMagnesium100gKey) as? String
		self.vitamineB1100g = aDecoder.decodeObjectForKey(kNutrimentsVitamineB1100gKey) as? String
		self.nutritionScoreFr100g = aDecoder.decodeObjectForKey(kNutrimentsNutritionScoreFr100gKey) as? String
		self.magnesiumUnit = aDecoder.decodeObjectForKey(kNutrimentsMagnesiumUnitKey) as? String
		self.ironLabel = aDecoder.decodeObjectForKey(kNutrimentsIronLabelKey) as? String
		self.phosphorusServing = aDecoder.decodeObjectForKey(kNutrimentsPhosphorusServingKey) as? String
		self.ironServing = aDecoder.decodeObjectForKey(kNutrimentsIronServingKey) as? String
		self.proteinsUnit = aDecoder.decodeObjectForKey(kNutrimentsProteinsUnitKey) as? String
		self.iron = aDecoder.decodeObjectForKey(kNutrimentsIronKey) as? String
		self.phosphore100g = aDecoder.decodeObjectForKey(kNutrimentsPhosphore100gKey) as? String
		self.fiber = aDecoder.decodeObjectForKey(kNutrimentsFiberKey) as? String
		self.fatUnit = aDecoder.decodeObjectForKey(kNutrimentsFatUnitKey) as? String
		self.nutritionScoreUk100g = aDecoder.decodeObjectForKey(kNutrimentsNutritionScoreUk100gKey) as? String
		self.sugarsUnit = aDecoder.decodeObjectForKey(kNutrimentsSugarsUnitKey) as? String
		self.fiberServing = aDecoder.decodeObjectForKey(kNutrimentsFiberServingKey) as? String
		self.fat100g = aDecoder.decodeObjectForKey(kNutrimentsFat100gKey) as? String
		self.calciumLabel = aDecoder.decodeObjectForKey(kNutrimentsCalciumLabelKey) as? String
		self.sodiumValue = aDecoder.decodeObjectForKey(kNutrimentsSodiumValueKey) as? String
		self.sugars = aDecoder.decodeObjectForKey(kNutrimentsSugarsKey) as? String
		self.carbohydrates = aDecoder.decodeObjectForKey(kNutrimentsCarbohydratesKey) as? String
		self.phosphorusUnit = aDecoder.decodeObjectForKey(kNutrimentsPhosphorusUnitKey) as? String
		self.carbohydrates100g = aDecoder.decodeObjectForKey(kNutrimentsCarbohydrates100gKey) as? String
		self.magnesiumServing = aDecoder.decodeObjectForKey(kNutrimentsMagnesiumServingKey) as? String
		self.calciumValue = aDecoder.decodeObjectForKey(kNutrimentsCalciumValueKey) as? String
		self.alcohol = aDecoder.decodeObjectForKey(kNutrimentsAlcoholKey) as? String
		self.saturatedFatServing = aDecoder.decodeObjectForKey(kNutrimentsSaturatedFatServingKey) as? String
		self.saltUnit = aDecoder.decodeObjectForKey(kNutrimentsSaltUnitKey) as? String
		self.sugars100g = aDecoder.decodeObjectForKey(kNutrimentsSugars100gKey) as? String
		self.sugarsValue = aDecoder.decodeObjectForKey(kNutrimentsSugarsValueKey) as? String
		self.ironValue = aDecoder.decodeObjectForKey(kNutrimentsIronValueKey) as? String
		self.salt100g = aDecoder.decodeObjectForKey(kNutrimentsSalt100gKey) as? String
		self.calcium100g = aDecoder.decodeObjectForKey(kNutrimentsCalcium100gKey) as? String
		self.nutritionScoreFr = aDecoder.decodeObjectForKey(kNutrimentsNutritionScoreFrKey) as? String
		self.ironUnit = aDecoder.decodeObjectForKey(kNutrimentsIronUnitKey) as? String
		self.calciumUnit = aDecoder.decodeObjectForKey(kNutrimentsCalciumUnitKey) as? String
		self.vitaminB1 = aDecoder.decodeObjectForKey(kNutrimentsVitaminB1Key) as? String
		self.phosphorusLabel = aDecoder.decodeObjectForKey(kNutrimentsPhosphorusLabelKey) as? String
		self.vitaminB1Unit = aDecoder.decodeObjectForKey(kNutrimentsVitaminB1UnitKey) as? String
		self.fat = aDecoder.decodeObjectForKey(kNutrimentsFatKey) as? String
		self.proteins = aDecoder.decodeObjectForKey(kNutrimentsProteinsKey) as? String
		self.vitaminB1100g = aDecoder.decodeObjectForKey(kNutrimentsVitaminB1100gKey) as? String
		self.saturatedFatUnit = aDecoder.decodeObjectForKey(kNutrimentsSaturatedFatUnitKey) as? String
		self.proteinsServing = aDecoder.decodeObjectForKey(kNutrimentsProteinsServingKey) as? String
		self.phosphoreServing = aDecoder.decodeObjectForKey(kNutrimentsPhosphoreServingKey) as? String
		self.sodium100g = aDecoder.decodeObjectForKey(kNutrimentsSodium100gKey) as? String
		self.alcohol100g = aDecoder.decodeObjectForKey(kNutrimentsAlcohol100gKey) as? String
		self.energyUnit = aDecoder.decodeObjectForKey(kNutrimentsEnergyUnitKey) as? String
		self.nutritionScoreUk = aDecoder.decodeObjectForKey(kNutrimentsNutritionScoreUkKey) as? String
		self.magnesium = aDecoder.decodeObjectForKey(kNutrimentsMagnesiumKey) as? String
		self.alcoholValue = aDecoder.decodeObjectForKey(kNutrimentsAlcoholValueKey) as? String
		self.sugarsServing = aDecoder.decodeObjectForKey(kNutrimentsSugarsServingKey) as? String
		self.vitaminB1Label = aDecoder.decodeObjectForKey(kNutrimentsVitaminB1LabelKey) as? String
		self.calcium = aDecoder.decodeObjectForKey(kNutrimentsCalciumKey) as? String
		self.magnesiumLabel = aDecoder.decodeObjectForKey(kNutrimentsMagnesiumLabelKey) as? String
		self.fiberValue = aDecoder.decodeObjectForKey(kNutrimentsFiberValueKey) as? String
		self.sodium = aDecoder.decodeObjectForKey(kNutrimentsSodiumKey) as? String
		self.sodiumServing = aDecoder.decodeObjectForKey(kNutrimentsSodiumServingKey) as? String
		self.carbohydratesServing = aDecoder.decodeObjectForKey(kNutrimentsCarbohydratesServingKey) as? String
		self.fatServing = aDecoder.decodeObjectForKey(kNutrimentsFatServingKey) as? String
		self.fiberUnit = aDecoder.decodeObjectForKey(kNutrimentsFiberUnitKey) as? String
		self.saturatedFat = aDecoder.decodeObjectForKey(kNutrimentsSaturatedFatKey) as? String
		self.phosphorusValue = aDecoder.decodeObjectForKey(kNutrimentsPhosphorusValueKey) as? String
		self.energyServing = aDecoder.decodeObjectForKey(kNutrimentsEnergyServingKey) as? String
		self.phosphorus = aDecoder.decodeObjectForKey(kNutrimentsPhosphorusKey) as? String
		self.salt = aDecoder.decodeObjectForKey(kNutrimentsSaltKey) as? String
		self.proteins100g = aDecoder.decodeObjectForKey(kNutrimentsProteins100gKey) as? String
		self.phosphorus100g = aDecoder.decodeObjectForKey(kNutrimentsPhosphorus100gKey) as? String
		self.energyValue = aDecoder.decodeObjectForKey(kNutrimentsEnergyValueKey) as? String
		self.saltValue = aDecoder.decodeObjectForKey(kNutrimentsSaltValueKey) as? String
		self.sodiumUnit = aDecoder.decodeObjectForKey(kNutrimentsSodiumUnitKey) as? String
		self.vitaminB1Value = aDecoder.decodeObjectForKey(kNutrimentsVitaminB1ValueKey) as? String
		self.saturatedFatValue = aDecoder.decodeObjectForKey(kNutrimentsSaturatedFatValueKey) as? String
		self.alcoholUnit = aDecoder.decodeObjectForKey(kNutrimentsAlcoholUnitKey) as? String
		self.magnesiumValue = aDecoder.decodeObjectForKey(kNutrimentsMagnesiumValueKey) as? String
		self.saturatedFat100g = aDecoder.decodeObjectForKey(kNutrimentsSaturatedFat100gKey) as? String
		self.proteinsValue = aDecoder.decodeObjectForKey(kNutrimentsProteinsValueKey) as? String
		self.energy = aDecoder.decodeObjectForKey(kNutrimentsEnergyKey) as? String
		self.vitamineB1Serving = aDecoder.decodeObjectForKey(kNutrimentsVitamineB1ServingKey) as? String
		self.iron100g = aDecoder.decodeObjectForKey(kNutrimentsIron100gKey) as? String

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(calciumServing, forKey: kNutrimentsCalciumServingKey)
		aCoder.encodeObject(energy100g, forKey: kNutrimentsEnergy100gKey)
		aCoder.encodeObject(carbohydratesUnit, forKey: kNutrimentsCarbohydratesUnitKey)
		aCoder.encodeObject(fiber100g, forKey: kNutrimentsFiber100gKey)
		aCoder.encodeObject(alcoholServing, forKey: kNutrimentsAlcoholServingKey)
		aCoder.encodeObject(carbohydratesValue, forKey: kNutrimentsCarbohydratesValueKey)
		aCoder.encodeObject(saltServing, forKey: kNutrimentsSaltServingKey)
		aCoder.encodeObject(vitaminB1Serving, forKey: kNutrimentsVitaminB1ServingKey)
		aCoder.encodeObject(fatValue, forKey: kNutrimentsFatValueKey)
		aCoder.encodeObject(magnesium100g, forKey: kNutrimentsMagnesium100gKey)
		aCoder.encodeObject(vitamineB1100g, forKey: kNutrimentsVitamineB1100gKey)
		aCoder.encodeObject(nutritionScoreFr100g, forKey: kNutrimentsNutritionScoreFr100gKey)
		aCoder.encodeObject(magnesiumUnit, forKey: kNutrimentsMagnesiumUnitKey)
		aCoder.encodeObject(ironLabel, forKey: kNutrimentsIronLabelKey)
		aCoder.encodeObject(phosphorusServing, forKey: kNutrimentsPhosphorusServingKey)
		aCoder.encodeObject(ironServing, forKey: kNutrimentsIronServingKey)
		aCoder.encodeObject(proteinsUnit, forKey: kNutrimentsProteinsUnitKey)
		aCoder.encodeObject(iron, forKey: kNutrimentsIronKey)
		aCoder.encodeObject(phosphore100g, forKey: kNutrimentsPhosphore100gKey)
		aCoder.encodeObject(fiber, forKey: kNutrimentsFiberKey)
		aCoder.encodeObject(fatUnit, forKey: kNutrimentsFatUnitKey)
		aCoder.encodeObject(nutritionScoreUk100g, forKey: kNutrimentsNutritionScoreUk100gKey)
		aCoder.encodeObject(sugarsUnit, forKey: kNutrimentsSugarsUnitKey)
		aCoder.encodeObject(fiberServing, forKey: kNutrimentsFiberServingKey)
		aCoder.encodeObject(fat100g, forKey: kNutrimentsFat100gKey)
		aCoder.encodeObject(calciumLabel, forKey: kNutrimentsCalciumLabelKey)
		aCoder.encodeObject(sodiumValue, forKey: kNutrimentsSodiumValueKey)
		aCoder.encodeObject(sugars, forKey: kNutrimentsSugarsKey)
		aCoder.encodeObject(carbohydrates, forKey: kNutrimentsCarbohydratesKey)
		aCoder.encodeObject(phosphorusUnit, forKey: kNutrimentsPhosphorusUnitKey)
		aCoder.encodeObject(carbohydrates100g, forKey: kNutrimentsCarbohydrates100gKey)
		aCoder.encodeObject(magnesiumServing, forKey: kNutrimentsMagnesiumServingKey)
		aCoder.encodeObject(calciumValue, forKey: kNutrimentsCalciumValueKey)
		aCoder.encodeObject(alcohol, forKey: kNutrimentsAlcoholKey)
		aCoder.encodeObject(saturatedFatServing, forKey: kNutrimentsSaturatedFatServingKey)
		aCoder.encodeObject(saltUnit, forKey: kNutrimentsSaltUnitKey)
		aCoder.encodeObject(sugars100g, forKey: kNutrimentsSugars100gKey)
		aCoder.encodeObject(sugarsValue, forKey: kNutrimentsSugarsValueKey)
		aCoder.encodeObject(ironValue, forKey: kNutrimentsIronValueKey)
		aCoder.encodeObject(salt100g, forKey: kNutrimentsSalt100gKey)
		aCoder.encodeObject(calcium100g, forKey: kNutrimentsCalcium100gKey)
		aCoder.encodeObject(nutritionScoreFr, forKey: kNutrimentsNutritionScoreFrKey)
		aCoder.encodeObject(ironUnit, forKey: kNutrimentsIronUnitKey)
		aCoder.encodeObject(calciumUnit, forKey: kNutrimentsCalciumUnitKey)
		aCoder.encodeObject(vitaminB1, forKey: kNutrimentsVitaminB1Key)
		aCoder.encodeObject(phosphorusLabel, forKey: kNutrimentsPhosphorusLabelKey)
		aCoder.encodeObject(vitaminB1Unit, forKey: kNutrimentsVitaminB1UnitKey)
		aCoder.encodeObject(fat, forKey: kNutrimentsFatKey)
		aCoder.encodeObject(proteins, forKey: kNutrimentsProteinsKey)
		aCoder.encodeObject(vitaminB1100g, forKey: kNutrimentsVitaminB1100gKey)
		aCoder.encodeObject(saturatedFatUnit, forKey: kNutrimentsSaturatedFatUnitKey)
		aCoder.encodeObject(proteinsServing, forKey: kNutrimentsProteinsServingKey)
		aCoder.encodeObject(phosphoreServing, forKey: kNutrimentsPhosphoreServingKey)
		aCoder.encodeObject(sodium100g, forKey: kNutrimentsSodium100gKey)
		aCoder.encodeObject(alcohol100g, forKey: kNutrimentsAlcohol100gKey)
		aCoder.encodeObject(energyUnit, forKey: kNutrimentsEnergyUnitKey)
		aCoder.encodeObject(nutritionScoreUk, forKey: kNutrimentsNutritionScoreUkKey)
		aCoder.encodeObject(magnesium, forKey: kNutrimentsMagnesiumKey)
		aCoder.encodeObject(alcoholValue, forKey: kNutrimentsAlcoholValueKey)
		aCoder.encodeObject(sugarsServing, forKey: kNutrimentsSugarsServingKey)
		aCoder.encodeObject(vitaminB1Label, forKey: kNutrimentsVitaminB1LabelKey)
		aCoder.encodeObject(calcium, forKey: kNutrimentsCalciumKey)
		aCoder.encodeObject(magnesiumLabel, forKey: kNutrimentsMagnesiumLabelKey)
		aCoder.encodeObject(fiberValue, forKey: kNutrimentsFiberValueKey)
		aCoder.encodeObject(sodium, forKey: kNutrimentsSodiumKey)
		aCoder.encodeObject(sodiumServing, forKey: kNutrimentsSodiumServingKey)
		aCoder.encodeObject(carbohydratesServing, forKey: kNutrimentsCarbohydratesServingKey)
		aCoder.encodeObject(fatServing, forKey: kNutrimentsFatServingKey)
		aCoder.encodeObject(fiberUnit, forKey: kNutrimentsFiberUnitKey)
		aCoder.encodeObject(saturatedFat, forKey: kNutrimentsSaturatedFatKey)
		aCoder.encodeObject(phosphorusValue, forKey: kNutrimentsPhosphorusValueKey)
		aCoder.encodeObject(energyServing, forKey: kNutrimentsEnergyServingKey)
		aCoder.encodeObject(phosphorus, forKey: kNutrimentsPhosphorusKey)
		aCoder.encodeObject(salt, forKey: kNutrimentsSaltKey)
		aCoder.encodeObject(proteins100g, forKey: kNutrimentsProteins100gKey)
		aCoder.encodeObject(phosphorus100g, forKey: kNutrimentsPhosphorus100gKey)
		aCoder.encodeObject(energyValue, forKey: kNutrimentsEnergyValueKey)
		aCoder.encodeObject(saltValue, forKey: kNutrimentsSaltValueKey)
		aCoder.encodeObject(sodiumUnit, forKey: kNutrimentsSodiumUnitKey)
		aCoder.encodeObject(vitaminB1Value, forKey: kNutrimentsVitaminB1ValueKey)
		aCoder.encodeObject(saturatedFatValue, forKey: kNutrimentsSaturatedFatValueKey)
		aCoder.encodeObject(alcoholUnit, forKey: kNutrimentsAlcoholUnitKey)
		aCoder.encodeObject(magnesiumValue, forKey: kNutrimentsMagnesiumValueKey)
		aCoder.encodeObject(saturatedFat100g, forKey: kNutrimentsSaturatedFat100gKey)
		aCoder.encodeObject(proteinsValue, forKey: kNutrimentsProteinsValueKey)
		aCoder.encodeObject(energy, forKey: kNutrimentsEnergyKey)
		aCoder.encodeObject(vitamineB1Serving, forKey: kNutrimentsVitamineB1ServingKey)
		aCoder.encodeObject(iron100g, forKey: kNutrimentsIron100gKey)

    }

}
