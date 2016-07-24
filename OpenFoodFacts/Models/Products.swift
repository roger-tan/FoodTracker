//
//  Products.swift
//
//  Created by Roger TAN on 7/10/16
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class Products: NSObject, NSCoding {

    // MARK: Declaration for string constants to be used to decode and also serialize.
	internal let kProductsCountriesKey: String = "countries"
	internal let kProductsLabelsTagsKey: String = "labels_tags"
	internal let kProductsCreatorKey: String = "creator"
	internal let kProductsFruitsVegetablesNuts100gEstimateKey: String = "fruits-vegetables-nuts_100g_estimate"
	internal let kProductsIngredientsTextWithAllergensFrKey: String = "ingredients_text_with_allergens_fr"
	internal let kProductsLcKey: String = "lc"
	internal let kProductsInternalIdentifierKey: String = "id"
	internal let kProductsIngredientsFromOrThatMayBeFromPalmOilNKey: String = "ingredients_from_or_that_may_be_from_palm_oil_n"
	internal let kProductsOriginsKey: String = "origins"
	internal let kProductsEmbCodesOrigKey: String = "emb_codes_orig"
	internal let kProductsUrlKey: String = "url"
	internal let kProductsRevKey: String = "rev"
	internal let kProductsNutrientLevelsKey: String = "nutrient_levels"
	internal let kProductsAllergensHierarchyKey: String = "allergens_hierarchy"
	internal let kProductsStoresTagsKey: String = "stores_tags"
	internal let kProductsLabelsHierarchyKey: String = "labels_hierarchy"
	internal let kProductsAllergensTagsKey: String = "allergens_tags"
	internal let kProductsLastImageDatesTagsKey: String = "last_image_dates_tags"
	internal let kProductsNutritionScoreWarningNoFiberKey: String = "nutrition_score_warning_no_fiber"
	internal let kProductsPurchasePlacesKey: String = "purchase_places"
	internal let kProductsManufacturingPlacesKey: String = "manufacturing_places"
	internal let kProductsSortkeyKey: String = "sortkey"
	internal let kProductsLabelsKey: String = "labels"
	internal let kProductsUnknownNutrientsTagsKey: String = "unknown_nutrients_tags"
	internal let kProductsAllergensKey: String = "allergens"
	internal let kProductsServingQuantityKey: String = "serving_quantity"
	internal let kProductsLastModifiedTKey: String = "last_modified_t"
	internal let kProductsInformersTagsKey: String = "informers_tags"
	internal let kProductsIngredientsIdsDebugKey: String = "ingredients_ids_debug"
	internal let kProductsLastModifiedByKey: String = "last_modified_by"
	internal let kProductsServingSizeKey: String = "serving_size"
	internal let kProductsPurchasePlacesTagsKey: String = "purchase_places_tags"
	internal let kProductsLinkKey: String = "link"
	internal let kProductsLangKey: String = "lang"
	internal let kProductsNutritionScoreDebugKey: String = "nutrition_score_debug"
	internal let kProductsIngredientsFromPalmOilNKey: String = "ingredients_from_palm_oil_n"
	internal let kProductsScansNKey: String = "scans_n"
	internal let kProductsEmbCodesTagsKey: String = "emb_codes_tags"
	internal let kProductsIngredientsThatMayBeFromPalmOilTagsKey: String = "ingredients_that_may_be_from_palm_oil_tags"
	internal let kProductsLanguagesKey: String = "languages"
	internal let kProductsNutritionGradesTagsKey: String = "nutrition_grades_tags"
	internal let kProductsCountriesHierarchyKey: String = "countries_hierarchy"
	internal let kProductsKeywordsKey: String = "_keywords"
	internal let kProductsImageIngredientsUrlKey: String = "image_ingredients_url"
	internal let kProductsCompleteKey: String = "complete"
	internal let kProductsAdditivesTagsKey: String = "additives_tags"
	internal let kProductsCheckersKey: String = "checkers"
	internal let kProductsAdditivesPrevTagsKey: String = "additives_prev_tags"
	internal let kProductsImageNutritionUrlKey: String = "image_nutrition_url"
	internal let kProductsImageThumbUrlKey: String = "image_thumb_url"
	internal let kProductsCorrectorsKey: String = "correctors"
	internal let kProductsStatesKey: String = "states"
	internal let kProductsEmbCodes20141016Key: String = "emb_codes_20141016"
	internal let kProductsPhotographersKey: String = "photographers"
	internal let kProductsIngredientsNTagsKey: String = "ingredients_n_tags"
	internal let kProductsLastEditorKey: String = "last_editor"
	internal let kProductsPhotographersTagsKey: String = "photographers_tags"
	internal let kProductsBrandsKey: String = "brands"
	internal let kProductsNutrimentsKey: String = "nutriments"
	internal let kProductsIngredientsTagsKey: String = "ingredients_tags"
	internal let kProductsLabelsDebugTagsKey: String = "labels_debug_tags"
	internal let kProductsQuantityKey: String = "quantity"
	internal let kProductsEditorsKey: String = "editors"
	internal let kProductsEntryDatesTagsKey: String = "entry_dates_tags"
	internal let kProductsIngredientsThatMayBeFromPalmOilNKey: String = "ingredients_that_may_be_from_palm_oil_n"
	internal let kProductsNutritionGradeFrKey: String = "nutrition_grade_fr"
	internal let kProductsNoNutritionDataKey: String = "no_nutrition_data"
	internal let kProductsProductNameFrKey: String = "product_name_fr"
	internal let kProductsProductNameKey: String = "product_name"
	internal let kProductsIngredientsNKey: String = "ingredients_n"
	internal let kProductsTracesHierarchyKey: String = "traces_hierarchy"
	internal let kProductsAdditivesDebugTagsKey: String = "additives_debug_tags"
	internal let kProductsPnnsGroups1TagsKey: String = "pnns_groups_1_tags"
	internal let kProductsCorrectorsTagsKey: String = "correctors_tags"
	internal let kProductsDebugTagsKey: String = "debug_tags"
	internal let kProductsIngredientsDebugKey: String = "ingredients_debug"
	internal let kProductsStatesTagsKey: String = "states_tags"
	internal let kProductsStoresKey: String = "stores"
	internal let kProductsMaxImgidKey: String = "max_imgid"
	internal let kProductsPnnsGroups1Key: String = "pnns_groups_1"
	internal let kProductsCategoriesDebugTagsKey: String = "categories_debug_tags"
	internal let kProductsNewAdditivesNKey: String = "new_additives_n"
	internal let kProductsLanguagesCodesKey: String = "languages_codes"
	internal let kProductsNutrientLevelsTagsKey: String = "nutrient_levels_tags"
	internal let kProductsIngredientsTextKey: String = "ingredients_text"
	internal let kProductsUniqueScansNKey: String = "unique_scans_n"
	internal let kProductsCheckersTagsKey: String = "checkers_tags"
	internal let kProductsTracesKey: String = "traces"
	internal let kProductsExpirationDateKey: String = "expiration_date"
	internal let kProductsImageFrontUrlKey: String = "image_front_url"
	internal let kProductsImageSmallUrlKey: String = "image_small_url"
	internal let kProductsAdditivesOldTagsKey: String = "additives_old_tags"
	internal let kProductsAdditivesPrevNKey: String = "additives_prev_n"
	internal let kProductsBrandsTagsKey: String = "brands_tags"
	internal let kProductsCategoriesHierarchyKey: String = "categories_hierarchy"
	internal let kProductsLanguagesHierarchyKey: String = "languages_hierarchy"
	internal let kProductsIngredientsTextDebugKey: String = "ingredients_text_debug"
	internal let kProductsPackagingKey: String = "packaging"
	internal let kProductsImageUrlKey: String = "image_url"
	internal let kProductsImagesKey: String = "images"
	internal let kProductsLabelsPrevTagsKey: String = "labels_prev_tags"
	internal let kProductsCategoriesKey: String = "categories"
	internal let kProductsLastEditDatesTagsKey: String = "last_edit_dates_tags"
	internal let kProductsLastImageTKey: String = "last_image_t"
	internal let kProductsInformersKey: String = "informers"
	internal let kProductsEditorsTagsKey: String = "editors_tags"
	internal let kProductsImageIngredientsThumbUrlKey: String = "image_ingredients_thumb_url"
	internal let kProductsImageNutritionThumbUrlKey: String = "image_nutrition_thumb_url"
	internal let kProductsImageNutritionSmallUrlKey: String = "image_nutrition_small_url"
	internal let kProductsGenericNameKey: String = "generic_name"
	internal let kProductsCodeKey: String = "code"
	internal let kProductsStatesHierarchyKey: String = "states_hierarchy"
	internal let kProductsIngredientsKey: String = "ingredients"
	internal let kProductsAdditivesOldNKey: String = "additives_old_n"
	internal let kProductsLabelsPrevHierarchyKey: String = "labels_prev_hierarchy"
	internal let kProductsPnnsGroups2TagsKey: String = "pnns_groups_2_tags"
	internal let kProductsCategoriesPrevTagsKey: String = "categories_prev_tags"
	internal let kProductsIngredientsTextFrKey: String = "ingredients_text_fr"
	internal let kProductsIngredientsFromPalmOilTagsKey: String = "ingredients_from_palm_oil_tags"
	internal let kProductsOriginsTagsKey: String = "origins_tags"
	internal let kProductsManufacturingPlacesTagsKey: String = "manufacturing_places_tags"
	internal let kProductsNutritionGradesKey: String = "nutrition_grades"
	internal let kProductsPackagingTagsKey: String = "packaging_tags"
	internal let kProductsCategoriesPrevHierarchyKey: String = "categories_prev_hierarchy"
	internal let kProductsInterfaceVersionModifiedKey: String = "interface_version_modified"
	internal let kProductsGenericNameFrKey: String = "generic_name_fr"
	internal let kProductsCodesTagsKey: String = "codes_tags"
	internal let kProductsImageFrontThumbUrlKey: String = "image_front_thumb_url"
	internal let kProductsImageFrontSmallUrlKey: String = "image_front_small_url"
	internal let kProductsCreatedTKey: String = "created_t"
	internal let kProductsCountriesTagsKey: String = "countries_tags"
	internal let kProductsAdditivesNKey: String = "additives_n"
	internal let kProductsInterfaceVersionCreatedKey: String = "interface_version_created"
//	internal let kProductsInternalIdentifierKey: String = "_id"
	internal let kProductsLanguagesTagsKey: String = "languages_tags"
	internal let kProductsNutritionDataPerKey: String = "nutrition_data_per"
	internal let kProductsPnnsGroups2Key: String = "pnns_groups_2"
	internal let kProductsCitiesTagsKey: String = "cities_tags"
	internal let kProductsDebugParamSortedLangsKey: String = "debug_param_sorted_langs"
	internal let kProductsTracesTagsKey: String = "traces_tags"
	internal let kProductsIngredientsTextWithAllergensKey: String = "ingredients_text_with_allergens"
	internal let kProductsCategoriesTagsKey: String = "categories_tags"
	internal let kProductsImageIngredientsSmallUrlKey: String = "image_ingredients_small_url"
	internal let kProductsEmbCodesKey: String = "emb_codes"
	internal let kProductsCompletedTKey: String = "completed_t"


    // MARK: Properties
	public var countries: String?
	public var labelsTags: [LabelsTags]?
	public var creator: String?
	public var fruitsVegetablesNuts100gEstimate: Int?
	public var ingredientsTextWithAllergensFr: String?
	public var lc: String?
	public var internalIdentifier: String?
	public var ingredientsFromOrThatMayBeFromPalmOilN: Int?
	public var origins: String?
	public var embCodesOrig: String?
	public var url: String?
	public var rev: Int?
	public var nutrientLevels: NutrientLevels?
	public var allergensHierarchy: [AllergensHierarchy]?
	public var storesTags: [StoresTags]?
	public var labelsHierarchy: [LabelsHierarchy]?
	public var allergensTags: [AllergensTags]?
	public var lastImageDatesTags: [LastImageDatesTags]?
	public var nutritionScoreWarningNoFiber: Int?
	public var purchasePlaces: String?
	public var manufacturingPlaces: String?
	public var sortkey: Int?
	public var labels: String?
	public var unknownNutrientsTags: [UnknownNutrientsTags]?
	public var allergens: String?
	public var servingQuantity: Int?
	public var lastModifiedT: Int?
	public var informersTags: [InformersTags]?
	public var ingredientsIdsDebug: [IngredientsIdsDebug]?
	public var lastModifiedBy: String?
	public var servingSize: String?
	public var purchasePlacesTags: [PurchasePlacesTags]?
	public var link: String?
	public var lang: String?
	public var nutritionScoreDebug: String?
	public var ingredientsFromPalmOilN: Int?
	public var scansN: Int?
	public var embCodesTags: [EmbCodesTags]?
	public var ingredientsThatMayBeFromPalmOilTags: [IngredientsThatMayBeFromPalmOilTags]?
//	public var languages: Languages?
	public var nutritionGradesTags: [NutritionGradesTags]?
	public var countriesHierarchy: [CountriesHierarchy]?
	public var keywords: [Keywords]?
	public var imageIngredientsUrl: String?
	public var complete: Int?
	public var additivesTags: [AdditivesTags]?
	public var checkers: [Checkers]?
	public var additivesPrevTags: [AdditivesPrevTags]?
	public var imageNutritionUrl: String?
	public var imageThumbUrl: String?
	public var correctors: [Correctors]?
	public var states: String?
	public var embCodes20141016: String?
	public var photographers: [Photographers]?
	public var ingredientsNTags: [IngredientsNTags]?
	public var lastEditor: String?
	public var photographersTags: [PhotographersTags]?
	public var brands: String?
	public var nutriments: Nutriments?
	public var ingredientsTags: [IngredientsTags]?
	public var labelsDebugTags: [LabelsDebugTags]?
	public var quantity: String?
	public var editors: [Editors]?
	public var entryDatesTags: [EntryDatesTags]?
	public var ingredientsThatMayBeFromPalmOilN: Int?
	public var nutritionGradeFr: String?
	public var noNutritionData: String?
	public var productNameFr: String?
	public var productName: String?
	public var ingredientsN: String?
	public var tracesHierarchy: [TracesHierarchy]?
	public var additivesDebugTags: [AdditivesDebugTags]?
	public var pnnsGroups1Tags: [PnnsGroups1Tags]?
	public var correctorsTags: [CorrectorsTags]?
	public var debugTags: [DebugTags]?
	public var ingredientsDebug: [IngredientsDebug]?
	public var statesTags: [StatesTags]?
	public var stores: String?
	public var maxImgid: String?
	public var pnnsGroups1: String?
	public var categoriesDebugTags: [CategoriesDebugTags]?
	public var newAdditivesN: Int?
	public var languagesCodes: LanguagesCodes?
	public var nutrientLevelsTags: [NutrientLevelsTags]?
	public var ingredientsText: String?
	public var uniqueScansN: Int?
	public var checkersTags: [CheckersTags]?
	public var traces: String?
	public var expirationDate: String?
	public var imageFrontUrl: String?
	public var imageSmallUrl: String?
	public var additivesOldTags: [AdditivesOldTags]?
	public var additivesPrevN: Int?
	public var brandsTags: [BrandsTags]?
	public var categoriesHierarchy: [CategoriesHierarchy]?
	public var languagesHierarchy: [LanguagesHierarchy]?
	public var ingredientsTextDebug: String?
	public var packaging: String?
	public var imageUrl: String?
	public var images: Images?
	public var labelsPrevTags: [LabelsPrevTags]?
	public var categories: String?
	public var lastEditDatesTags: [LastEditDatesTags]?
	public var lastImageT: Int?
	public var informers: [Informers]?
	public var editorsTags: [EditorsTags]?
	public var imageIngredientsThumbUrl: String?
	public var imageNutritionThumbUrl: String?
	public var imageNutritionSmallUrl: String?
	public var genericName: String?
	public var code: String?
	public var statesHierarchy: [StatesHierarchy]?
	public var ingredients: [Ingredients]?
	public var additivesOldN: Int?
	public var labelsPrevHierarchy: [LabelsPrevHierarchy]?
	public var pnnsGroups2Tags: [PnnsGroups2Tags]?
	public var categoriesPrevTags: [CategoriesPrevTags]?
	public var ingredientsTextFr: String?
	public var ingredientsFromPalmOilTags: [IngredientsFromPalmOilTags]?
	public var originsTags: [OriginsTags]?
	public var manufacturingPlacesTags: [ManufacturingPlacesTags]?
	public var nutritionGrades: String?
	public var packagingTags: [PackagingTags]?
	public var categoriesPrevHierarchy: [CategoriesPrevHierarchy]?
	public var interfaceVersionModified: String?
	public var genericNameFr: String?
	public var codesTags: [CodesTags]?
	public var imageFrontThumbUrl: String?
	public var imageFrontSmallUrl: String?
	public var createdT: Int?
	public var countriesTags: [CountriesTags]?
	public var additivesN: Int?
	public var interfaceVersionCreated: String?
//	public var internalIdentifier: String?
	public var languagesTags: [LanguagesTags]?
	public var nutritionDataPer: String?
	public var pnnsGroups2: String?
	public var citiesTags: [CitiesTags]?
	public var debugParamSortedLangs: [DebugParamSortedLangs]?
	public var tracesTags: [TracesTags]?
	public var ingredientsTextWithAllergens: String?
	public var categoriesTags: [CategoriesTags]?
	public var imageIngredientsSmallUrl: String?
	public var embCodes: String?
	public var completedT: Int?


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
		countries = json[kProductsCountriesKey].string
		labelsTags = []
		if let items = json[kProductsLabelsTagsKey].array {
			for item in items {
				labelsTags?.append(LabelsTags(json: item))
			}
		} else {
			labelsTags = nil
		}
		creator = json[kProductsCreatorKey].string
		fruitsVegetablesNuts100gEstimate = json[kProductsFruitsVegetablesNuts100gEstimateKey].int
		ingredientsTextWithAllergensFr = json[kProductsIngredientsTextWithAllergensFrKey].string
		lc = json[kProductsLcKey].string
		internalIdentifier = json[kProductsInternalIdentifierKey].string
		ingredientsFromOrThatMayBeFromPalmOilN = json[kProductsIngredientsFromOrThatMayBeFromPalmOilNKey].int
		origins = json[kProductsOriginsKey].string
		embCodesOrig = json[kProductsEmbCodesOrigKey].string
		url = json[kProductsUrlKey].string
		rev = json[kProductsRevKey].int
		nutrientLevels = NutrientLevels(json: json[kProductsNutrientLevelsKey])
		allergensHierarchy = []
		if let items = json[kProductsAllergensHierarchyKey].array {
			for item in items {
				allergensHierarchy?.append(AllergensHierarchy(json: item))
			}
		} else {
			allergensHierarchy = nil
		}
		storesTags = []
		if let items = json[kProductsStoresTagsKey].array {
			for item in items {
				storesTags?.append(StoresTags(json: item))
			}
		} else {
			storesTags = nil
		}
		labelsHierarchy = []
		if let items = json[kProductsLabelsHierarchyKey].array {
			for item in items {
				labelsHierarchy?.append(LabelsHierarchy(json: item))
			}
		} else {
			labelsHierarchy = nil
		}
		allergensTags = []
		if let items = json[kProductsAllergensTagsKey].array {
			for item in items {
				allergensTags?.append(AllergensTags(json: item))
			}
		} else {
			allergensTags = nil
		}
		lastImageDatesTags = []
		if let items = json[kProductsLastImageDatesTagsKey].array {
			for item in items {
				lastImageDatesTags?.append(LastImageDatesTags(json: item))
			}
		} else {
			lastImageDatesTags = nil
		}
		nutritionScoreWarningNoFiber = json[kProductsNutritionScoreWarningNoFiberKey].int
		purchasePlaces = json[kProductsPurchasePlacesKey].string
		manufacturingPlaces = json[kProductsManufacturingPlacesKey].string
		sortkey = json[kProductsSortkeyKey].int
		labels = json[kProductsLabelsKey].string
		unknownNutrientsTags = []
		if let items = json[kProductsUnknownNutrientsTagsKey].array {
			for item in items {
				unknownNutrientsTags?.append(UnknownNutrientsTags(json: item))
			}
		} else {
			unknownNutrientsTags = nil
		}
		allergens = json[kProductsAllergensKey].string
		servingQuantity = json[kProductsServingQuantityKey].int
		lastModifiedT = json[kProductsLastModifiedTKey].int
		informersTags = []
		if let items = json[kProductsInformersTagsKey].array {
			for item in items {
				informersTags?.append(InformersTags(json: item))
			}
		} else {
			informersTags = nil
		}
		ingredientsIdsDebug = []
		if let items = json[kProductsIngredientsIdsDebugKey].array {
			for item in items {
				ingredientsIdsDebug?.append(IngredientsIdsDebug(json: item))
			}
		} else {
			ingredientsIdsDebug = nil
		}
		lastModifiedBy = json[kProductsLastModifiedByKey].string
		servingSize = json[kProductsServingSizeKey].string
		purchasePlacesTags = []
		if let items = json[kProductsPurchasePlacesTagsKey].array {
			for item in items {
				purchasePlacesTags?.append(PurchasePlacesTags(json: item))
			}
		} else {
			purchasePlacesTags = nil
		}
		link = json[kProductsLinkKey].string
		lang = json[kProductsLangKey].string
		nutritionScoreDebug = json[kProductsNutritionScoreDebugKey].string
		ingredientsFromPalmOilN = json[kProductsIngredientsFromPalmOilNKey].int
		scansN = json[kProductsScansNKey].int
		embCodesTags = []
		if let items = json[kProductsEmbCodesTagsKey].array {
			for item in items {
				embCodesTags?.append(EmbCodesTags(json: item))
			}
		} else {
			embCodesTags = nil
		}
		ingredientsThatMayBeFromPalmOilTags = []
		if let items = json[kProductsIngredientsThatMayBeFromPalmOilTagsKey].array {
			for item in items {
				ingredientsThatMayBeFromPalmOilTags?.append(IngredientsThatMayBeFromPalmOilTags(json: item))
			}
		} else {
			ingredientsThatMayBeFromPalmOilTags = nil
		}
//		languages = Languages(json: json[kProductsLanguagesKey])
		nutritionGradesTags = []
		if let items = json[kProductsNutritionGradesTagsKey].array {
			for item in items {
				nutritionGradesTags?.append(NutritionGradesTags(json: item))
			}
		} else {
			nutritionGradesTags = nil
		}
		countriesHierarchy = []
		if let items = json[kProductsCountriesHierarchyKey].array {
			for item in items {
				countriesHierarchy?.append(CountriesHierarchy(json: item))
			}
		} else {
			countriesHierarchy = nil
		}
		keywords = []
		if let items = json[kProductsKeywordsKey].array {
			for item in items {
				keywords?.append(Keywords(json: item))
			}
		} else {
			keywords = nil
		}
		imageIngredientsUrl = json[kProductsImageIngredientsUrlKey].string
		complete = json[kProductsCompleteKey].int
		additivesTags = []
		if let items = json[kProductsAdditivesTagsKey].array {
			for item in items {
				additivesTags?.append(AdditivesTags(json: item))
			}
		} else {
			additivesTags = nil
		}
		checkers = []
		if let items = json[kProductsCheckersKey].array {
			for item in items {
				checkers?.append(Checkers(json: item))
			}
		} else {
			checkers = nil
		}
		additivesPrevTags = []
		if let items = json[kProductsAdditivesPrevTagsKey].array {
			for item in items {
				additivesPrevTags?.append(AdditivesPrevTags(json: item))
			}
		} else {
			additivesPrevTags = nil
		}
		imageNutritionUrl = json[kProductsImageNutritionUrlKey].string
		imageThumbUrl = json[kProductsImageThumbUrlKey].string
		correctors = []
		if let items = json[kProductsCorrectorsKey].array {
			for item in items {
				correctors?.append(Correctors(json: item))
			}
		} else {
			correctors = nil
		}
		states = json[kProductsStatesKey].string
		embCodes20141016 = json[kProductsEmbCodes20141016Key].string
		photographers = []
		if let items = json[kProductsPhotographersKey].array {
			for item in items {
				photographers?.append(Photographers(json: item))
			}
		} else {
			photographers = nil
		}
		ingredientsNTags = []
		if let items = json[kProductsIngredientsNTagsKey].array {
			for item in items {
				ingredientsNTags?.append(IngredientsNTags(json: item))
			}
		} else {
			ingredientsNTags = nil
		}
		lastEditor = json[kProductsLastEditorKey].string
		photographersTags = []
		if let items = json[kProductsPhotographersTagsKey].array {
			for item in items {
				photographersTags?.append(PhotographersTags(json: item))
			}
		} else {
			photographersTags = nil
		}
		brands = json[kProductsBrandsKey].string
		nutriments = Nutriments(json: json[kProductsNutrimentsKey])
		ingredientsTags = []
		if let items = json[kProductsIngredientsTagsKey].array {
			for item in items {
				ingredientsTags?.append(IngredientsTags(json: item))
			}
		} else {
			ingredientsTags = nil
		}
		labelsDebugTags = []
		if let items = json[kProductsLabelsDebugTagsKey].array {
			for item in items {
				labelsDebugTags?.append(LabelsDebugTags(json: item))
			}
		} else {
			labelsDebugTags = nil
		}
		quantity = json[kProductsQuantityKey].string
		editors = []
		if let items = json[kProductsEditorsKey].array {
			for item in items {
				editors?.append(Editors(json: item))
			}
		} else {
			editors = nil
		}
		entryDatesTags = []
		if let items = json[kProductsEntryDatesTagsKey].array {
			for item in items {
				entryDatesTags?.append(EntryDatesTags(json: item))
			}
		} else {
			entryDatesTags = nil
		}
		ingredientsThatMayBeFromPalmOilN = json[kProductsIngredientsThatMayBeFromPalmOilNKey].int
		nutritionGradeFr = json[kProductsNutritionGradeFrKey].string
		noNutritionData = json[kProductsNoNutritionDataKey].string
		productNameFr = json[kProductsProductNameFrKey].string
		productName = json[kProductsProductNameKey].string
		ingredientsN = json[kProductsIngredientsNKey].string
		tracesHierarchy = []
		if let items = json[kProductsTracesHierarchyKey].array {
			for item in items {
				tracesHierarchy?.append(TracesHierarchy(json: item))
			}
		} else {
			tracesHierarchy = nil
		}
		additivesDebugTags = []
		if let items = json[kProductsAdditivesDebugTagsKey].array {
			for item in items {
				additivesDebugTags?.append(AdditivesDebugTags(json: item))
			}
		} else {
			additivesDebugTags = nil
		}
		pnnsGroups1Tags = []
		if let items = json[kProductsPnnsGroups1TagsKey].array {
			for item in items {
				pnnsGroups1Tags?.append(PnnsGroups1Tags(json: item))
			}
		} else {
			pnnsGroups1Tags = nil
		}
		correctorsTags = []
		if let items = json[kProductsCorrectorsTagsKey].array {
			for item in items {
				correctorsTags?.append(CorrectorsTags(json: item))
			}
		} else {
			correctorsTags = nil
		}
		debugTags = []
		if let items = json[kProductsDebugTagsKey].array {
			for item in items {
				debugTags?.append(DebugTags(json: item))
			}
		} else {
			debugTags = nil
		}
		ingredientsDebug = []
		if let items = json[kProductsIngredientsDebugKey].array {
			for item in items {
				ingredientsDebug?.append(IngredientsDebug(json: item))
			}
		} else {
			ingredientsDebug = nil
		}
		statesTags = []
		if let items = json[kProductsStatesTagsKey].array {
			for item in items {
				statesTags?.append(StatesTags(json: item))
			}
		} else {
			statesTags = nil
		}
		stores = json[kProductsStoresKey].string
		maxImgid = json[kProductsMaxImgidKey].string
		pnnsGroups1 = json[kProductsPnnsGroups1Key].string
		categoriesDebugTags = []
		if let items = json[kProductsCategoriesDebugTagsKey].array {
			for item in items {
				categoriesDebugTags?.append(CategoriesDebugTags(json: item))
			}
		} else {
			categoriesDebugTags = nil
		}
		newAdditivesN = json[kProductsNewAdditivesNKey].int
		languagesCodes = LanguagesCodes(json: json[kProductsLanguagesCodesKey])
		nutrientLevelsTags = []
		if let items = json[kProductsNutrientLevelsTagsKey].array {
			for item in items {
				nutrientLevelsTags?.append(NutrientLevelsTags(json: item))
			}
		} else {
			nutrientLevelsTags = nil
		}
		ingredientsText = json[kProductsIngredientsTextKey].string
		uniqueScansN = json[kProductsUniqueScansNKey].int
		checkersTags = []
		if let items = json[kProductsCheckersTagsKey].array {
			for item in items {
				checkersTags?.append(CheckersTags(json: item))
			}
		} else {
			checkersTags = nil
		}
		traces = json[kProductsTracesKey].string
		expirationDate = json[kProductsExpirationDateKey].string
		imageFrontUrl = json[kProductsImageFrontUrlKey].string
		imageSmallUrl = json[kProductsImageSmallUrlKey].string
		additivesOldTags = []
		if let items = json[kProductsAdditivesOldTagsKey].array {
			for item in items {
				additivesOldTags?.append(AdditivesOldTags(json: item))
			}
		} else {
			additivesOldTags = nil
		}
		additivesPrevN = json[kProductsAdditivesPrevNKey].int
		brandsTags = []
		if let items = json[kProductsBrandsTagsKey].array {
			for item in items {
				brandsTags?.append(BrandsTags(json: item))
			}
		} else {
			brandsTags = nil
		}
		categoriesHierarchy = []
		if let items = json[kProductsCategoriesHierarchyKey].array {
			for item in items {
				categoriesHierarchy?.append(CategoriesHierarchy(json: item))
			}
		} else {
			categoriesHierarchy = nil
		}
		languagesHierarchy = []
		if let items = json[kProductsLanguagesHierarchyKey].array {
			for item in items {
				languagesHierarchy?.append(LanguagesHierarchy(json: item))
			}
		} else {
			languagesHierarchy = nil
		}
		ingredientsTextDebug = json[kProductsIngredientsTextDebugKey].string
		packaging = json[kProductsPackagingKey].string
		imageUrl = json[kProductsImageUrlKey].string
		images = Images(json: json[kProductsImagesKey])
		labelsPrevTags = []
		if let items = json[kProductsLabelsPrevTagsKey].array {
			for item in items {
				labelsPrevTags?.append(LabelsPrevTags(json: item))
			}
		} else {
			labelsPrevTags = nil
		}
		categories = json[kProductsCategoriesKey].string
		lastEditDatesTags = []
		if let items = json[kProductsLastEditDatesTagsKey].array {
			for item in items {
				lastEditDatesTags?.append(LastEditDatesTags(json: item))
			}
		} else {
			lastEditDatesTags = nil
		}
		lastImageT = json[kProductsLastImageTKey].int
		informers = []
		if let items = json[kProductsInformersKey].array {
			for item in items {
				informers?.append(Informers(json: item))
			}
		} else {
			informers = nil
		}
		editorsTags = []
		if let items = json[kProductsEditorsTagsKey].array {
			for item in items {
				editorsTags?.append(EditorsTags(json: item))
			}
		} else {
			editorsTags = nil
		}
		imageIngredientsThumbUrl = json[kProductsImageIngredientsThumbUrlKey].string
		imageNutritionThumbUrl = json[kProductsImageNutritionThumbUrlKey].string
		imageNutritionSmallUrl = json[kProductsImageNutritionSmallUrlKey].string
		genericName = json[kProductsGenericNameKey].string
		code = json[kProductsCodeKey].string
		statesHierarchy = []
		if let items = json[kProductsStatesHierarchyKey].array {
			for item in items {
				statesHierarchy?.append(StatesHierarchy(json: item))
			}
		} else {
			statesHierarchy = nil
		}
		ingredients = []
		if let items = json[kProductsIngredientsKey].array {
			for item in items {
				ingredients?.append(Ingredients(json: item))
			}
		} else {
			ingredients = nil
		}
		additivesOldN = json[kProductsAdditivesOldNKey].int
		labelsPrevHierarchy = []
		if let items = json[kProductsLabelsPrevHierarchyKey].array {
			for item in items {
				labelsPrevHierarchy?.append(LabelsPrevHierarchy(json: item))
			}
		} else {
			labelsPrevHierarchy = nil
		}
		pnnsGroups2Tags = []
		if let items = json[kProductsPnnsGroups2TagsKey].array {
			for item in items {
				pnnsGroups2Tags?.append(PnnsGroups2Tags(json: item))
			}
		} else {
			pnnsGroups2Tags = nil
		}
		categoriesPrevTags = []
		if let items = json[kProductsCategoriesPrevTagsKey].array {
			for item in items {
				categoriesPrevTags?.append(CategoriesPrevTags(json: item))
			}
		} else {
			categoriesPrevTags = nil
		}
		ingredientsTextFr = json[kProductsIngredientsTextFrKey].string
		ingredientsFromPalmOilTags = []
		if let items = json[kProductsIngredientsFromPalmOilTagsKey].array {
			for item in items {
				ingredientsFromPalmOilTags?.append(IngredientsFromPalmOilTags(json: item))
			}
		} else {
			ingredientsFromPalmOilTags = nil
		}
		originsTags = []
		if let items = json[kProductsOriginsTagsKey].array {
			for item in items {
				originsTags?.append(OriginsTags(json: item))
			}
		} else {
			originsTags = nil
		}
		manufacturingPlacesTags = []
		if let items = json[kProductsManufacturingPlacesTagsKey].array {
			for item in items {
				manufacturingPlacesTags?.append(ManufacturingPlacesTags(json: item))
			}
		} else {
			manufacturingPlacesTags = nil
		}
		nutritionGrades = json[kProductsNutritionGradesKey].string
		packagingTags = []
		if let items = json[kProductsPackagingTagsKey].array {
			for item in items {
				packagingTags?.append(PackagingTags(json: item))
			}
		} else {
			packagingTags = nil
		}
		categoriesPrevHierarchy = []
		if let items = json[kProductsCategoriesPrevHierarchyKey].array {
			for item in items {
				categoriesPrevHierarchy?.append(CategoriesPrevHierarchy(json: item))
			}
		} else {
			categoriesPrevHierarchy = nil
		}
		interfaceVersionModified = json[kProductsInterfaceVersionModifiedKey].string
		genericNameFr = json[kProductsGenericNameFrKey].string
		codesTags = []
		if let items = json[kProductsCodesTagsKey].array {
			for item in items {
				codesTags?.append(CodesTags(json: item))
			}
		} else {
			codesTags = nil
		}
		imageFrontThumbUrl = json[kProductsImageFrontThumbUrlKey].string
		imageFrontSmallUrl = json[kProductsImageFrontSmallUrlKey].string
		createdT = json[kProductsCreatedTKey].int
		countriesTags = []
		if let items = json[kProductsCountriesTagsKey].array {
			for item in items {
				countriesTags?.append(CountriesTags(json: item))
			}
		} else {
			countriesTags = nil
		}
		additivesN = json[kProductsAdditivesNKey].int
		interfaceVersionCreated = json[kProductsInterfaceVersionCreatedKey].string
		internalIdentifier = json[kProductsInternalIdentifierKey].string
		languagesTags = []
		if let items = json[kProductsLanguagesTagsKey].array {
			for item in items {
				languagesTags?.append(LanguagesTags(json: item))
			}
		} else {
			languagesTags = nil
		}
		nutritionDataPer = json[kProductsNutritionDataPerKey].string
		pnnsGroups2 = json[kProductsPnnsGroups2Key].string
		citiesTags = []
		if let items = json[kProductsCitiesTagsKey].array {
			for item in items {
				citiesTags?.append(CitiesTags(json: item))
			}
		} else {
			citiesTags = nil
		}
		debugParamSortedLangs = []
		if let items = json[kProductsDebugParamSortedLangsKey].array {
			for item in items {
				debugParamSortedLangs?.append(DebugParamSortedLangs(json: item))
			}
		} else {
			debugParamSortedLangs = nil
		}
		tracesTags = []
		if let items = json[kProductsTracesTagsKey].array {
			for item in items {
				tracesTags?.append(TracesTags(json: item))
			}
		} else {
			tracesTags = nil
		}
		ingredientsTextWithAllergens = json[kProductsIngredientsTextWithAllergensKey].string
		categoriesTags = []
		if let items = json[kProductsCategoriesTagsKey].array {
			for item in items {
				categoriesTags?.append(CategoriesTags(json: item))
			}
		} else {
			categoriesTags = nil
		}
		imageIngredientsSmallUrl = json[kProductsImageIngredientsSmallUrlKey].string
		embCodes = json[kProductsEmbCodesKey].string
		completedT = json[kProductsCompletedTKey].int

    }


    /**
    Generates description of the object in the form of a NSDictionary.
    - returns: A Key value pair containing all valid values in the object.
    */
    public func dictionaryRepresentation() -> [String : AnyObject ] {

        var dictionary: [String : AnyObject ] = [ : ]
		if countries != nil {
			dictionary.updateValue(countries!, forKey: kProductsCountriesKey)
		}
		if labelsTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in labelsTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsLabelsTagsKey)
		}
		if creator != nil {
			dictionary.updateValue(creator!, forKey: kProductsCreatorKey)
		}
		if fruitsVegetablesNuts100gEstimate != nil {
			dictionary.updateValue(fruitsVegetablesNuts100gEstimate!, forKey: kProductsFruitsVegetablesNuts100gEstimateKey)
		}
		if ingredientsTextWithAllergensFr != nil {
			dictionary.updateValue(ingredientsTextWithAllergensFr!, forKey: kProductsIngredientsTextWithAllergensFrKey)
		}
		if lc != nil {
			dictionary.updateValue(lc!, forKey: kProductsLcKey)
		}
		if internalIdentifier != nil {
			dictionary.updateValue(internalIdentifier!, forKey: kProductsInternalIdentifierKey)
		}
		if ingredientsFromOrThatMayBeFromPalmOilN != nil {
			dictionary.updateValue(ingredientsFromOrThatMayBeFromPalmOilN!, forKey: kProductsIngredientsFromOrThatMayBeFromPalmOilNKey)
		}
		if origins != nil {
			dictionary.updateValue(origins!, forKey: kProductsOriginsKey)
		}
		if embCodesOrig != nil {
			dictionary.updateValue(embCodesOrig!, forKey: kProductsEmbCodesOrigKey)
		}
		if url != nil {
			dictionary.updateValue(url!, forKey: kProductsUrlKey)
		}
		if rev != nil {
			dictionary.updateValue(rev!, forKey: kProductsRevKey)
		}
		if nutrientLevels != nil {
			dictionary.updateValue(nutrientLevels!.dictionaryRepresentation(), forKey: kProductsNutrientLevelsKey)
		}
		if allergensHierarchy?.count > 0 {
			var temp: [AnyObject] = []
			for item in allergensHierarchy! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsAllergensHierarchyKey)
		}
		if storesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in storesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsStoresTagsKey)
		}
		if labelsHierarchy?.count > 0 {
			var temp: [AnyObject] = []
			for item in labelsHierarchy! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsLabelsHierarchyKey)
		}
		if allergensTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in allergensTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsAllergensTagsKey)
		}
		if lastImageDatesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in lastImageDatesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsLastImageDatesTagsKey)
		}
		if nutritionScoreWarningNoFiber != nil {
			dictionary.updateValue(nutritionScoreWarningNoFiber!, forKey: kProductsNutritionScoreWarningNoFiberKey)
		}
		if purchasePlaces != nil {
			dictionary.updateValue(purchasePlaces!, forKey: kProductsPurchasePlacesKey)
		}
		if manufacturingPlaces != nil {
			dictionary.updateValue(manufacturingPlaces!, forKey: kProductsManufacturingPlacesKey)
		}
		if sortkey != nil {
			dictionary.updateValue(sortkey!, forKey: kProductsSortkeyKey)
		}
		if labels != nil {
			dictionary.updateValue(labels!, forKey: kProductsLabelsKey)
		}
		if unknownNutrientsTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in unknownNutrientsTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsUnknownNutrientsTagsKey)
		}
		if allergens != nil {
			dictionary.updateValue(allergens!, forKey: kProductsAllergensKey)
		}
		if servingQuantity != nil {
			dictionary.updateValue(servingQuantity!, forKey: kProductsServingQuantityKey)
		}
		if lastModifiedT != nil {
			dictionary.updateValue(lastModifiedT!, forKey: kProductsLastModifiedTKey)
		}
		if informersTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in informersTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsInformersTagsKey)
		}
		if ingredientsIdsDebug?.count > 0 {
			var temp: [AnyObject] = []
			for item in ingredientsIdsDebug! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsIngredientsIdsDebugKey)
		}
		if lastModifiedBy != nil {
			dictionary.updateValue(lastModifiedBy!, forKey: kProductsLastModifiedByKey)
		}
		if servingSize != nil {
			dictionary.updateValue(servingSize!, forKey: kProductsServingSizeKey)
		}
		if purchasePlacesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in purchasePlacesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsPurchasePlacesTagsKey)
		}
		if link != nil {
			dictionary.updateValue(link!, forKey: kProductsLinkKey)
		}
		if lang != nil {
			dictionary.updateValue(lang!, forKey: kProductsLangKey)
		}
		if nutritionScoreDebug != nil {
			dictionary.updateValue(nutritionScoreDebug!, forKey: kProductsNutritionScoreDebugKey)
		}
		if ingredientsFromPalmOilN != nil {
			dictionary.updateValue(ingredientsFromPalmOilN!, forKey: kProductsIngredientsFromPalmOilNKey)
		}
		if scansN != nil {
			dictionary.updateValue(scansN!, forKey: kProductsScansNKey)
		}
		if embCodesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in embCodesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsEmbCodesTagsKey)
		}
		if ingredientsThatMayBeFromPalmOilTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in ingredientsThatMayBeFromPalmOilTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsIngredientsThatMayBeFromPalmOilTagsKey)
		}
//		if languages != nil {
//			dictionary.updateValue(languages!.dictionaryRepresentation(), forKey: kProductsLanguagesKey)
//		}
		if nutritionGradesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in nutritionGradesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsNutritionGradesTagsKey)
		}
		if countriesHierarchy?.count > 0 {
			var temp: [AnyObject] = []
			for item in countriesHierarchy! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsCountriesHierarchyKey)
		}
		if keywords?.count > 0 {
			var temp: [AnyObject] = []
			for item in keywords! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsKeywordsKey)
		}
		if imageIngredientsUrl != nil {
			dictionary.updateValue(imageIngredientsUrl!, forKey: kProductsImageIngredientsUrlKey)
		}
		if complete != nil {
			dictionary.updateValue(complete!, forKey: kProductsCompleteKey)
		}
		if additivesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in additivesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsAdditivesTagsKey)
		}
		if checkers?.count > 0 {
			var temp: [AnyObject] = []
			for item in checkers! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsCheckersKey)
		}
		if additivesPrevTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in additivesPrevTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsAdditivesPrevTagsKey)
		}
		if imageNutritionUrl != nil {
			dictionary.updateValue(imageNutritionUrl!, forKey: kProductsImageNutritionUrlKey)
		}
		if imageThumbUrl != nil {
			dictionary.updateValue(imageThumbUrl!, forKey: kProductsImageThumbUrlKey)
		}
		if correctors?.count > 0 {
			var temp: [AnyObject] = []
			for item in correctors! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsCorrectorsKey)
		}
		if states != nil {
			dictionary.updateValue(states!, forKey: kProductsStatesKey)
		}
		if embCodes20141016 != nil {
			dictionary.updateValue(embCodes20141016!, forKey: kProductsEmbCodes20141016Key)
		}
		if photographers?.count > 0 {
			var temp: [AnyObject] = []
			for item in photographers! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsPhotographersKey)
		}
		if ingredientsNTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in ingredientsNTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsIngredientsNTagsKey)
		}
		if lastEditor != nil {
			dictionary.updateValue(lastEditor!, forKey: kProductsLastEditorKey)
		}
		if photographersTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in photographersTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsPhotographersTagsKey)
		}
		if brands != nil {
			dictionary.updateValue(brands!, forKey: kProductsBrandsKey)
		}
		if nutriments != nil {
			dictionary.updateValue(nutriments!.dictionaryRepresentation(), forKey: kProductsNutrimentsKey)
		}
		if ingredientsTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in ingredientsTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsIngredientsTagsKey)
		}
		if labelsDebugTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in labelsDebugTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsLabelsDebugTagsKey)
		}
		if quantity != nil {
			dictionary.updateValue(quantity!, forKey: kProductsQuantityKey)
		}
		if editors?.count > 0 {
			var temp: [AnyObject] = []
			for item in editors! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsEditorsKey)
		}
		if entryDatesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in entryDatesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsEntryDatesTagsKey)
		}
		if ingredientsThatMayBeFromPalmOilN != nil {
			dictionary.updateValue(ingredientsThatMayBeFromPalmOilN!, forKey: kProductsIngredientsThatMayBeFromPalmOilNKey)
		}
		if nutritionGradeFr != nil {
			dictionary.updateValue(nutritionGradeFr!, forKey: kProductsNutritionGradeFrKey)
		}
		if noNutritionData != nil {
			dictionary.updateValue(noNutritionData!, forKey: kProductsNoNutritionDataKey)
		}
		if productNameFr != nil {
			dictionary.updateValue(productNameFr!, forKey: kProductsProductNameFrKey)
		}
		if productName != nil {
			dictionary.updateValue(productName!, forKey: kProductsProductNameKey)
		}
		if ingredientsN != nil {
			dictionary.updateValue(ingredientsN!, forKey: kProductsIngredientsNKey)
		}
		if tracesHierarchy?.count > 0 {
			var temp: [AnyObject] = []
			for item in tracesHierarchy! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsTracesHierarchyKey)
		}
		if additivesDebugTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in additivesDebugTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsAdditivesDebugTagsKey)
		}
		if pnnsGroups1Tags?.count > 0 {
			var temp: [AnyObject] = []
			for item in pnnsGroups1Tags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsPnnsGroups1TagsKey)
		}
		if correctorsTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in correctorsTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsCorrectorsTagsKey)
		}
		if debugTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in debugTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsDebugTagsKey)
		}
		if ingredientsDebug?.count > 0 {
			var temp: [AnyObject] = []
			for item in ingredientsDebug! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsIngredientsDebugKey)
		}
		if statesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in statesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsStatesTagsKey)
		}
		if stores != nil {
			dictionary.updateValue(stores!, forKey: kProductsStoresKey)
		}
		if maxImgid != nil {
			dictionary.updateValue(maxImgid!, forKey: kProductsMaxImgidKey)
		}
		if pnnsGroups1 != nil {
			dictionary.updateValue(pnnsGroups1!, forKey: kProductsPnnsGroups1Key)
		}
		if categoriesDebugTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in categoriesDebugTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsCategoriesDebugTagsKey)
		}
		if newAdditivesN != nil {
			dictionary.updateValue(newAdditivesN!, forKey: kProductsNewAdditivesNKey)
		}
		if languagesCodes != nil {
			dictionary.updateValue(languagesCodes!.dictionaryRepresentation(), forKey: kProductsLanguagesCodesKey)
		}
		if nutrientLevelsTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in nutrientLevelsTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsNutrientLevelsTagsKey)
		}
		if ingredientsText != nil {
			dictionary.updateValue(ingredientsText!, forKey: kProductsIngredientsTextKey)
		}
		if uniqueScansN != nil {
			dictionary.updateValue(uniqueScansN!, forKey: kProductsUniqueScansNKey)
		}
		if checkersTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in checkersTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsCheckersTagsKey)
		}
		if traces != nil {
			dictionary.updateValue(traces!, forKey: kProductsTracesKey)
		}
		if expirationDate != nil {
			dictionary.updateValue(expirationDate!, forKey: kProductsExpirationDateKey)
		}
		if imageFrontUrl != nil {
			dictionary.updateValue(imageFrontUrl!, forKey: kProductsImageFrontUrlKey)
		}
		if imageSmallUrl != nil {
			dictionary.updateValue(imageSmallUrl!, forKey: kProductsImageSmallUrlKey)
		}
		if additivesOldTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in additivesOldTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsAdditivesOldTagsKey)
		}
		if additivesPrevN != nil {
			dictionary.updateValue(additivesPrevN!, forKey: kProductsAdditivesPrevNKey)
		}
		if brandsTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in brandsTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsBrandsTagsKey)
		}
		if categoriesHierarchy?.count > 0 {
			var temp: [AnyObject] = []
			for item in categoriesHierarchy! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsCategoriesHierarchyKey)
		}
		if languagesHierarchy?.count > 0 {
			var temp: [AnyObject] = []
			for item in languagesHierarchy! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsLanguagesHierarchyKey)
		}
		if ingredientsTextDebug != nil {
			dictionary.updateValue(ingredientsTextDebug!, forKey: kProductsIngredientsTextDebugKey)
		}
		if packaging != nil {
			dictionary.updateValue(packaging!, forKey: kProductsPackagingKey)
		}
		if imageUrl != nil {
			dictionary.updateValue(imageUrl!, forKey: kProductsImageUrlKey)
		}
		if images != nil {
			dictionary.updateValue(images!.dictionaryRepresentation(), forKey: kProductsImagesKey)
		}
		if labelsPrevTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in labelsPrevTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsLabelsPrevTagsKey)
		}
		if categories != nil {
			dictionary.updateValue(categories!, forKey: kProductsCategoriesKey)
		}
		if lastEditDatesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in lastEditDatesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsLastEditDatesTagsKey)
		}
		if lastImageT != nil {
			dictionary.updateValue(lastImageT!, forKey: kProductsLastImageTKey)
		}
		if informers?.count > 0 {
			var temp: [AnyObject] = []
			for item in informers! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsInformersKey)
		}
		if editorsTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in editorsTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsEditorsTagsKey)
		}
		if imageIngredientsThumbUrl != nil {
			dictionary.updateValue(imageIngredientsThumbUrl!, forKey: kProductsImageIngredientsThumbUrlKey)
		}
		if imageNutritionThumbUrl != nil {
			dictionary.updateValue(imageNutritionThumbUrl!, forKey: kProductsImageNutritionThumbUrlKey)
		}
		if imageNutritionSmallUrl != nil {
			dictionary.updateValue(imageNutritionSmallUrl!, forKey: kProductsImageNutritionSmallUrlKey)
		}
		if genericName != nil {
			dictionary.updateValue(genericName!, forKey: kProductsGenericNameKey)
		}
		if code != nil {
			dictionary.updateValue(code!, forKey: kProductsCodeKey)
		}
		if statesHierarchy?.count > 0 {
			var temp: [AnyObject] = []
			for item in statesHierarchy! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsStatesHierarchyKey)
		}
		if ingredients?.count > 0 {
			var temp: [AnyObject] = []
			for item in ingredients! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsIngredientsKey)
		}
		if additivesOldN != nil {
			dictionary.updateValue(additivesOldN!, forKey: kProductsAdditivesOldNKey)
		}
		if labelsPrevHierarchy?.count > 0 {
			var temp: [AnyObject] = []
			for item in labelsPrevHierarchy! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsLabelsPrevHierarchyKey)
		}
		if pnnsGroups2Tags?.count > 0 {
			var temp: [AnyObject] = []
			for item in pnnsGroups2Tags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsPnnsGroups2TagsKey)
		}
		if categoriesPrevTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in categoriesPrevTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsCategoriesPrevTagsKey)
		}
		if ingredientsTextFr != nil {
			dictionary.updateValue(ingredientsTextFr!, forKey: kProductsIngredientsTextFrKey)
		}
		if ingredientsFromPalmOilTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in ingredientsFromPalmOilTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsIngredientsFromPalmOilTagsKey)
		}
		if originsTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in originsTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsOriginsTagsKey)
		}
		if manufacturingPlacesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in manufacturingPlacesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsManufacturingPlacesTagsKey)
		}
		if nutritionGrades != nil {
			dictionary.updateValue(nutritionGrades!, forKey: kProductsNutritionGradesKey)
		}
		if packagingTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in packagingTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsPackagingTagsKey)
		}
		if categoriesPrevHierarchy?.count > 0 {
			var temp: [AnyObject] = []
			for item in categoriesPrevHierarchy! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsCategoriesPrevHierarchyKey)
		}
		if interfaceVersionModified != nil {
			dictionary.updateValue(interfaceVersionModified!, forKey: kProductsInterfaceVersionModifiedKey)
		}
		if genericNameFr != nil {
			dictionary.updateValue(genericNameFr!, forKey: kProductsGenericNameFrKey)
		}
		if codesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in codesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsCodesTagsKey)
		}
		if imageFrontThumbUrl != nil {
			dictionary.updateValue(imageFrontThumbUrl!, forKey: kProductsImageFrontThumbUrlKey)
		}
		if imageFrontSmallUrl != nil {
			dictionary.updateValue(imageFrontSmallUrl!, forKey: kProductsImageFrontSmallUrlKey)
		}
		if createdT != nil {
			dictionary.updateValue(createdT!, forKey: kProductsCreatedTKey)
		}
		if countriesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in countriesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsCountriesTagsKey)
		}
		if additivesN != nil {
			dictionary.updateValue(additivesN!, forKey: kProductsAdditivesNKey)
		}
		if interfaceVersionCreated != nil {
			dictionary.updateValue(interfaceVersionCreated!, forKey: kProductsInterfaceVersionCreatedKey)
		}
		if internalIdentifier != nil {
			dictionary.updateValue(internalIdentifier!, forKey: kProductsInternalIdentifierKey)
		}
		if languagesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in languagesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsLanguagesTagsKey)
		}
		if nutritionDataPer != nil {
			dictionary.updateValue(nutritionDataPer!, forKey: kProductsNutritionDataPerKey)
		}
		if pnnsGroups2 != nil {
			dictionary.updateValue(pnnsGroups2!, forKey: kProductsPnnsGroups2Key)
		}
		if citiesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in citiesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsCitiesTagsKey)
		}
		if debugParamSortedLangs?.count > 0 {
			var temp: [AnyObject] = []
			for item in debugParamSortedLangs! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsDebugParamSortedLangsKey)
		}
		if tracesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in tracesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsTracesTagsKey)
		}
		if ingredientsTextWithAllergens != nil {
			dictionary.updateValue(ingredientsTextWithAllergens!, forKey: kProductsIngredientsTextWithAllergensKey)
		}
		if categoriesTags?.count > 0 {
			var temp: [AnyObject] = []
			for item in categoriesTags! {
				temp.append(item.dictionaryRepresentation())
			}
			dictionary.updateValue(temp, forKey: kProductsCategoriesTagsKey)
		}
		if imageIngredientsSmallUrl != nil {
			dictionary.updateValue(imageIngredientsSmallUrl!, forKey: kProductsImageIngredientsSmallUrlKey)
		}
		if embCodes != nil {
			dictionary.updateValue(embCodes!, forKey: kProductsEmbCodesKey)
		}
		if completedT != nil {
			dictionary.updateValue(completedT!, forKey: kProductsCompletedTKey)
		}

        return dictionary
    }

    // MARK: NSCoding Protocol
    required public init(coder aDecoder: NSCoder) {
		self.countries = aDecoder.decodeObjectForKey(kProductsCountriesKey) as? String
		self.labelsTags = aDecoder.decodeObjectForKey(kProductsLabelsTagsKey) as? [LabelsTags]
		self.creator = aDecoder.decodeObjectForKey(kProductsCreatorKey) as? String
		self.fruitsVegetablesNuts100gEstimate = aDecoder.decodeObjectForKey(kProductsFruitsVegetablesNuts100gEstimateKey) as? Int
		self.ingredientsTextWithAllergensFr = aDecoder.decodeObjectForKey(kProductsIngredientsTextWithAllergensFrKey) as? String
		self.lc = aDecoder.decodeObjectForKey(kProductsLcKey) as? String
		self.internalIdentifier = aDecoder.decodeObjectForKey(kProductsInternalIdentifierKey) as? String
		self.ingredientsFromOrThatMayBeFromPalmOilN = aDecoder.decodeObjectForKey(kProductsIngredientsFromOrThatMayBeFromPalmOilNKey) as? Int
		self.origins = aDecoder.decodeObjectForKey(kProductsOriginsKey) as? String
		self.embCodesOrig = aDecoder.decodeObjectForKey(kProductsEmbCodesOrigKey) as? String
		self.url = aDecoder.decodeObjectForKey(kProductsUrlKey) as? String
		self.rev = aDecoder.decodeObjectForKey(kProductsRevKey) as? Int
		self.nutrientLevels = aDecoder.decodeObjectForKey(kProductsNutrientLevelsKey) as? NutrientLevels
		self.allergensHierarchy = aDecoder.decodeObjectForKey(kProductsAllergensHierarchyKey) as? [AllergensHierarchy]
		self.storesTags = aDecoder.decodeObjectForKey(kProductsStoresTagsKey) as? [StoresTags]
		self.labelsHierarchy = aDecoder.decodeObjectForKey(kProductsLabelsHierarchyKey) as? [LabelsHierarchy]
		self.allergensTags = aDecoder.decodeObjectForKey(kProductsAllergensTagsKey) as? [AllergensTags]
		self.lastImageDatesTags = aDecoder.decodeObjectForKey(kProductsLastImageDatesTagsKey) as? [LastImageDatesTags]
		self.nutritionScoreWarningNoFiber = aDecoder.decodeObjectForKey(kProductsNutritionScoreWarningNoFiberKey) as? Int
		self.purchasePlaces = aDecoder.decodeObjectForKey(kProductsPurchasePlacesKey) as? String
		self.manufacturingPlaces = aDecoder.decodeObjectForKey(kProductsManufacturingPlacesKey) as? String
		self.sortkey = aDecoder.decodeObjectForKey(kProductsSortkeyKey) as? Int
		self.labels = aDecoder.decodeObjectForKey(kProductsLabelsKey) as? String
		self.unknownNutrientsTags = aDecoder.decodeObjectForKey(kProductsUnknownNutrientsTagsKey) as? [UnknownNutrientsTags]
		self.allergens = aDecoder.decodeObjectForKey(kProductsAllergensKey) as? String
		self.servingQuantity = aDecoder.decodeObjectForKey(kProductsServingQuantityKey) as? Int
		self.lastModifiedT = aDecoder.decodeObjectForKey(kProductsLastModifiedTKey) as? Int
		self.informersTags = aDecoder.decodeObjectForKey(kProductsInformersTagsKey) as? [InformersTags]
		self.ingredientsIdsDebug = aDecoder.decodeObjectForKey(kProductsIngredientsIdsDebugKey) as? [IngredientsIdsDebug]
		self.lastModifiedBy = aDecoder.decodeObjectForKey(kProductsLastModifiedByKey) as? String
		self.servingSize = aDecoder.decodeObjectForKey(kProductsServingSizeKey) as? String
		self.purchasePlacesTags = aDecoder.decodeObjectForKey(kProductsPurchasePlacesTagsKey) as? [PurchasePlacesTags]
		self.link = aDecoder.decodeObjectForKey(kProductsLinkKey) as? String
		self.lang = aDecoder.decodeObjectForKey(kProductsLangKey) as? String
		self.nutritionScoreDebug = aDecoder.decodeObjectForKey(kProductsNutritionScoreDebugKey) as? String
		self.ingredientsFromPalmOilN = aDecoder.decodeObjectForKey(kProductsIngredientsFromPalmOilNKey) as? Int
		self.scansN = aDecoder.decodeObjectForKey(kProductsScansNKey) as? Int
		self.embCodesTags = aDecoder.decodeObjectForKey(kProductsEmbCodesTagsKey) as? [EmbCodesTags]
		self.ingredientsThatMayBeFromPalmOilTags = aDecoder.decodeObjectForKey(kProductsIngredientsThatMayBeFromPalmOilTagsKey) as? [IngredientsThatMayBeFromPalmOilTags]
//		self.languages = aDecoder.decodeObjectForKey(kProductsLanguagesKey) as? Languages
		self.nutritionGradesTags = aDecoder.decodeObjectForKey(kProductsNutritionGradesTagsKey) as? [NutritionGradesTags]
		self.countriesHierarchy = aDecoder.decodeObjectForKey(kProductsCountriesHierarchyKey) as? [CountriesHierarchy]
		self.keywords = aDecoder.decodeObjectForKey(kProductsKeywordsKey) as? [Keywords]
		self.imageIngredientsUrl = aDecoder.decodeObjectForKey(kProductsImageIngredientsUrlKey) as? String
		self.complete = aDecoder.decodeObjectForKey(kProductsCompleteKey) as? Int
		self.additivesTags = aDecoder.decodeObjectForKey(kProductsAdditivesTagsKey) as? [AdditivesTags]
		self.checkers = aDecoder.decodeObjectForKey(kProductsCheckersKey) as? [Checkers]
		self.additivesPrevTags = aDecoder.decodeObjectForKey(kProductsAdditivesPrevTagsKey) as? [AdditivesPrevTags]
		self.imageNutritionUrl = aDecoder.decodeObjectForKey(kProductsImageNutritionUrlKey) as? String
		self.imageThumbUrl = aDecoder.decodeObjectForKey(kProductsImageThumbUrlKey) as? String
		self.correctors = aDecoder.decodeObjectForKey(kProductsCorrectorsKey) as? [Correctors]
		self.states = aDecoder.decodeObjectForKey(kProductsStatesKey) as? String
		self.embCodes20141016 = aDecoder.decodeObjectForKey(kProductsEmbCodes20141016Key) as? String
		self.photographers = aDecoder.decodeObjectForKey(kProductsPhotographersKey) as? [Photographers]
		self.ingredientsNTags = aDecoder.decodeObjectForKey(kProductsIngredientsNTagsKey) as? [IngredientsNTags]
		self.lastEditor = aDecoder.decodeObjectForKey(kProductsLastEditorKey) as? String
		self.photographersTags = aDecoder.decodeObjectForKey(kProductsPhotographersTagsKey) as? [PhotographersTags]
		self.brands = aDecoder.decodeObjectForKey(kProductsBrandsKey) as? String
		self.nutriments = aDecoder.decodeObjectForKey(kProductsNutrimentsKey) as? Nutriments
		self.ingredientsTags = aDecoder.decodeObjectForKey(kProductsIngredientsTagsKey) as? [IngredientsTags]
		self.labelsDebugTags = aDecoder.decodeObjectForKey(kProductsLabelsDebugTagsKey) as? [LabelsDebugTags]
		self.quantity = aDecoder.decodeObjectForKey(kProductsQuantityKey) as? String
		self.editors = aDecoder.decodeObjectForKey(kProductsEditorsKey) as? [Editors]
		self.entryDatesTags = aDecoder.decodeObjectForKey(kProductsEntryDatesTagsKey) as? [EntryDatesTags]
		self.ingredientsThatMayBeFromPalmOilN = aDecoder.decodeObjectForKey(kProductsIngredientsThatMayBeFromPalmOilNKey) as? Int
		self.nutritionGradeFr = aDecoder.decodeObjectForKey(kProductsNutritionGradeFrKey) as? String
		self.noNutritionData = aDecoder.decodeObjectForKey(kProductsNoNutritionDataKey) as? String
		self.productNameFr = aDecoder.decodeObjectForKey(kProductsProductNameFrKey) as? String
		self.productName = aDecoder.decodeObjectForKey(kProductsProductNameKey) as? String
		self.ingredientsN = aDecoder.decodeObjectForKey(kProductsIngredientsNKey) as? String
		self.tracesHierarchy = aDecoder.decodeObjectForKey(kProductsTracesHierarchyKey) as? [TracesHierarchy]
		self.additivesDebugTags = aDecoder.decodeObjectForKey(kProductsAdditivesDebugTagsKey) as? [AdditivesDebugTags]
		self.pnnsGroups1Tags = aDecoder.decodeObjectForKey(kProductsPnnsGroups1TagsKey) as? [PnnsGroups1Tags]
		self.correctorsTags = aDecoder.decodeObjectForKey(kProductsCorrectorsTagsKey) as? [CorrectorsTags]
		self.debugTags = aDecoder.decodeObjectForKey(kProductsDebugTagsKey) as? [DebugTags]
		self.ingredientsDebug = aDecoder.decodeObjectForKey(kProductsIngredientsDebugKey) as? [IngredientsDebug]
		self.statesTags = aDecoder.decodeObjectForKey(kProductsStatesTagsKey) as? [StatesTags]
		self.stores = aDecoder.decodeObjectForKey(kProductsStoresKey) as? String
		self.maxImgid = aDecoder.decodeObjectForKey(kProductsMaxImgidKey) as? String
		self.pnnsGroups1 = aDecoder.decodeObjectForKey(kProductsPnnsGroups1Key) as? String
		self.categoriesDebugTags = aDecoder.decodeObjectForKey(kProductsCategoriesDebugTagsKey) as? [CategoriesDebugTags]
		self.newAdditivesN = aDecoder.decodeObjectForKey(kProductsNewAdditivesNKey) as? Int
		self.languagesCodes = aDecoder.decodeObjectForKey(kProductsLanguagesCodesKey) as? LanguagesCodes
		self.nutrientLevelsTags = aDecoder.decodeObjectForKey(kProductsNutrientLevelsTagsKey) as? [NutrientLevelsTags]
		self.ingredientsText = aDecoder.decodeObjectForKey(kProductsIngredientsTextKey) as? String
		self.uniqueScansN = aDecoder.decodeObjectForKey(kProductsUniqueScansNKey) as? Int
		self.checkersTags = aDecoder.decodeObjectForKey(kProductsCheckersTagsKey) as? [CheckersTags]
		self.traces = aDecoder.decodeObjectForKey(kProductsTracesKey) as? String
		self.expirationDate = aDecoder.decodeObjectForKey(kProductsExpirationDateKey) as? String
		self.imageFrontUrl = aDecoder.decodeObjectForKey(kProductsImageFrontUrlKey) as? String
		self.imageSmallUrl = aDecoder.decodeObjectForKey(kProductsImageSmallUrlKey) as? String
		self.additivesOldTags = aDecoder.decodeObjectForKey(kProductsAdditivesOldTagsKey) as? [AdditivesOldTags]
		self.additivesPrevN = aDecoder.decodeObjectForKey(kProductsAdditivesPrevNKey) as? Int
		self.brandsTags = aDecoder.decodeObjectForKey(kProductsBrandsTagsKey) as? [BrandsTags]
		self.categoriesHierarchy = aDecoder.decodeObjectForKey(kProductsCategoriesHierarchyKey) as? [CategoriesHierarchy]
		self.languagesHierarchy = aDecoder.decodeObjectForKey(kProductsLanguagesHierarchyKey) as? [LanguagesHierarchy]
		self.ingredientsTextDebug = aDecoder.decodeObjectForKey(kProductsIngredientsTextDebugKey) as? String
		self.packaging = aDecoder.decodeObjectForKey(kProductsPackagingKey) as? String
		self.imageUrl = aDecoder.decodeObjectForKey(kProductsImageUrlKey) as? String
		self.images = aDecoder.decodeObjectForKey(kProductsImagesKey) as? Images
		self.labelsPrevTags = aDecoder.decodeObjectForKey(kProductsLabelsPrevTagsKey) as? [LabelsPrevTags]
		self.categories = aDecoder.decodeObjectForKey(kProductsCategoriesKey) as? String
		self.lastEditDatesTags = aDecoder.decodeObjectForKey(kProductsLastEditDatesTagsKey) as? [LastEditDatesTags]
		self.lastImageT = aDecoder.decodeObjectForKey(kProductsLastImageTKey) as? Int
		self.informers = aDecoder.decodeObjectForKey(kProductsInformersKey) as? [Informers]
		self.editorsTags = aDecoder.decodeObjectForKey(kProductsEditorsTagsKey) as? [EditorsTags]
		self.imageIngredientsThumbUrl = aDecoder.decodeObjectForKey(kProductsImageIngredientsThumbUrlKey) as? String
		self.imageNutritionThumbUrl = aDecoder.decodeObjectForKey(kProductsImageNutritionThumbUrlKey) as? String
		self.imageNutritionSmallUrl = aDecoder.decodeObjectForKey(kProductsImageNutritionSmallUrlKey) as? String
		self.genericName = aDecoder.decodeObjectForKey(kProductsGenericNameKey) as? String
		self.code = aDecoder.decodeObjectForKey(kProductsCodeKey) as? String
		self.statesHierarchy = aDecoder.decodeObjectForKey(kProductsStatesHierarchyKey) as? [StatesHierarchy]
		self.ingredients = aDecoder.decodeObjectForKey(kProductsIngredientsKey) as? [Ingredients]
		self.additivesOldN = aDecoder.decodeObjectForKey(kProductsAdditivesOldNKey) as? Int
		self.labelsPrevHierarchy = aDecoder.decodeObjectForKey(kProductsLabelsPrevHierarchyKey) as? [LabelsPrevHierarchy]
		self.pnnsGroups2Tags = aDecoder.decodeObjectForKey(kProductsPnnsGroups2TagsKey) as? [PnnsGroups2Tags]
		self.categoriesPrevTags = aDecoder.decodeObjectForKey(kProductsCategoriesPrevTagsKey) as? [CategoriesPrevTags]
		self.ingredientsTextFr = aDecoder.decodeObjectForKey(kProductsIngredientsTextFrKey) as? String
		self.ingredientsFromPalmOilTags = aDecoder.decodeObjectForKey(kProductsIngredientsFromPalmOilTagsKey) as? [IngredientsFromPalmOilTags]
		self.originsTags = aDecoder.decodeObjectForKey(kProductsOriginsTagsKey) as? [OriginsTags]
		self.manufacturingPlacesTags = aDecoder.decodeObjectForKey(kProductsManufacturingPlacesTagsKey) as? [ManufacturingPlacesTags]
		self.nutritionGrades = aDecoder.decodeObjectForKey(kProductsNutritionGradesKey) as? String
		self.packagingTags = aDecoder.decodeObjectForKey(kProductsPackagingTagsKey) as? [PackagingTags]
		self.categoriesPrevHierarchy = aDecoder.decodeObjectForKey(kProductsCategoriesPrevHierarchyKey) as? [CategoriesPrevHierarchy]
		self.interfaceVersionModified = aDecoder.decodeObjectForKey(kProductsInterfaceVersionModifiedKey) as? String
		self.genericNameFr = aDecoder.decodeObjectForKey(kProductsGenericNameFrKey) as? String
		self.codesTags = aDecoder.decodeObjectForKey(kProductsCodesTagsKey) as? [CodesTags]
		self.imageFrontThumbUrl = aDecoder.decodeObjectForKey(kProductsImageFrontThumbUrlKey) as? String
		self.imageFrontSmallUrl = aDecoder.decodeObjectForKey(kProductsImageFrontSmallUrlKey) as? String
		self.createdT = aDecoder.decodeObjectForKey(kProductsCreatedTKey) as? Int
		self.countriesTags = aDecoder.decodeObjectForKey(kProductsCountriesTagsKey) as? [CountriesTags]
		self.additivesN = aDecoder.decodeObjectForKey(kProductsAdditivesNKey) as? Int
		self.interfaceVersionCreated = aDecoder.decodeObjectForKey(kProductsInterfaceVersionCreatedKey) as? String
		self.internalIdentifier = aDecoder.decodeObjectForKey(kProductsInternalIdentifierKey) as? String
		self.languagesTags = aDecoder.decodeObjectForKey(kProductsLanguagesTagsKey) as? [LanguagesTags]
		self.nutritionDataPer = aDecoder.decodeObjectForKey(kProductsNutritionDataPerKey) as? String
		self.pnnsGroups2 = aDecoder.decodeObjectForKey(kProductsPnnsGroups2Key) as? String
		self.citiesTags = aDecoder.decodeObjectForKey(kProductsCitiesTagsKey) as? [CitiesTags]
		self.debugParamSortedLangs = aDecoder.decodeObjectForKey(kProductsDebugParamSortedLangsKey) as? [DebugParamSortedLangs]
		self.tracesTags = aDecoder.decodeObjectForKey(kProductsTracesTagsKey) as? [TracesTags]
		self.ingredientsTextWithAllergens = aDecoder.decodeObjectForKey(kProductsIngredientsTextWithAllergensKey) as? String
		self.categoriesTags = aDecoder.decodeObjectForKey(kProductsCategoriesTagsKey) as? [CategoriesTags]
		self.imageIngredientsSmallUrl = aDecoder.decodeObjectForKey(kProductsImageIngredientsSmallUrlKey) as? String
		self.embCodes = aDecoder.decodeObjectForKey(kProductsEmbCodesKey) as? String
		self.completedT = aDecoder.decodeObjectForKey(kProductsCompletedTKey) as? Int

    }

    public func encodeWithCoder(aCoder: NSCoder) {
		aCoder.encodeObject(countries, forKey: kProductsCountriesKey)
		aCoder.encodeObject(labelsTags, forKey: kProductsLabelsTagsKey)
		aCoder.encodeObject(creator, forKey: kProductsCreatorKey)
		aCoder.encodeObject(fruitsVegetablesNuts100gEstimate, forKey: kProductsFruitsVegetablesNuts100gEstimateKey)
		aCoder.encodeObject(ingredientsTextWithAllergensFr, forKey: kProductsIngredientsTextWithAllergensFrKey)
		aCoder.encodeObject(lc, forKey: kProductsLcKey)
		aCoder.encodeObject(internalIdentifier, forKey: kProductsInternalIdentifierKey)
		aCoder.encodeObject(ingredientsFromOrThatMayBeFromPalmOilN, forKey: kProductsIngredientsFromOrThatMayBeFromPalmOilNKey)
		aCoder.encodeObject(origins, forKey: kProductsOriginsKey)
		aCoder.encodeObject(embCodesOrig, forKey: kProductsEmbCodesOrigKey)
		aCoder.encodeObject(url, forKey: kProductsUrlKey)
		aCoder.encodeObject(rev, forKey: kProductsRevKey)
		aCoder.encodeObject(nutrientLevels, forKey: kProductsNutrientLevelsKey)
		aCoder.encodeObject(allergensHierarchy, forKey: kProductsAllergensHierarchyKey)
		aCoder.encodeObject(storesTags, forKey: kProductsStoresTagsKey)
		aCoder.encodeObject(labelsHierarchy, forKey: kProductsLabelsHierarchyKey)
		aCoder.encodeObject(allergensTags, forKey: kProductsAllergensTagsKey)
		aCoder.encodeObject(lastImageDatesTags, forKey: kProductsLastImageDatesTagsKey)
		aCoder.encodeObject(nutritionScoreWarningNoFiber, forKey: kProductsNutritionScoreWarningNoFiberKey)
		aCoder.encodeObject(purchasePlaces, forKey: kProductsPurchasePlacesKey)
		aCoder.encodeObject(manufacturingPlaces, forKey: kProductsManufacturingPlacesKey)
		aCoder.encodeObject(sortkey, forKey: kProductsSortkeyKey)
		aCoder.encodeObject(labels, forKey: kProductsLabelsKey)
		aCoder.encodeObject(unknownNutrientsTags, forKey: kProductsUnknownNutrientsTagsKey)
		aCoder.encodeObject(allergens, forKey: kProductsAllergensKey)
		aCoder.encodeObject(servingQuantity, forKey: kProductsServingQuantityKey)
		aCoder.encodeObject(lastModifiedT, forKey: kProductsLastModifiedTKey)
		aCoder.encodeObject(informersTags, forKey: kProductsInformersTagsKey)
		aCoder.encodeObject(ingredientsIdsDebug, forKey: kProductsIngredientsIdsDebugKey)
		aCoder.encodeObject(lastModifiedBy, forKey: kProductsLastModifiedByKey)
		aCoder.encodeObject(servingSize, forKey: kProductsServingSizeKey)
		aCoder.encodeObject(purchasePlacesTags, forKey: kProductsPurchasePlacesTagsKey)
		aCoder.encodeObject(link, forKey: kProductsLinkKey)
		aCoder.encodeObject(lang, forKey: kProductsLangKey)
		aCoder.encodeObject(nutritionScoreDebug, forKey: kProductsNutritionScoreDebugKey)
		aCoder.encodeObject(ingredientsFromPalmOilN, forKey: kProductsIngredientsFromPalmOilNKey)
		aCoder.encodeObject(scansN, forKey: kProductsScansNKey)
		aCoder.encodeObject(embCodesTags, forKey: kProductsEmbCodesTagsKey)
		aCoder.encodeObject(ingredientsThatMayBeFromPalmOilTags, forKey: kProductsIngredientsThatMayBeFromPalmOilTagsKey)
//		aCoder.encodeObject(languages, forKey: kProductsLanguagesKey)
		aCoder.encodeObject(nutritionGradesTags, forKey: kProductsNutritionGradesTagsKey)
		aCoder.encodeObject(countriesHierarchy, forKey: kProductsCountriesHierarchyKey)
		aCoder.encodeObject(keywords, forKey: kProductsKeywordsKey)
		aCoder.encodeObject(imageIngredientsUrl, forKey: kProductsImageIngredientsUrlKey)
		aCoder.encodeObject(complete, forKey: kProductsCompleteKey)
		aCoder.encodeObject(additivesTags, forKey: kProductsAdditivesTagsKey)
		aCoder.encodeObject(checkers, forKey: kProductsCheckersKey)
		aCoder.encodeObject(additivesPrevTags, forKey: kProductsAdditivesPrevTagsKey)
		aCoder.encodeObject(imageNutritionUrl, forKey: kProductsImageNutritionUrlKey)
		aCoder.encodeObject(imageThumbUrl, forKey: kProductsImageThumbUrlKey)
		aCoder.encodeObject(correctors, forKey: kProductsCorrectorsKey)
		aCoder.encodeObject(states, forKey: kProductsStatesKey)
		aCoder.encodeObject(embCodes20141016, forKey: kProductsEmbCodes20141016Key)
		aCoder.encodeObject(photographers, forKey: kProductsPhotographersKey)
		aCoder.encodeObject(ingredientsNTags, forKey: kProductsIngredientsNTagsKey)
		aCoder.encodeObject(lastEditor, forKey: kProductsLastEditorKey)
		aCoder.encodeObject(photographersTags, forKey: kProductsPhotographersTagsKey)
		aCoder.encodeObject(brands, forKey: kProductsBrandsKey)
		aCoder.encodeObject(nutriments, forKey: kProductsNutrimentsKey)
		aCoder.encodeObject(ingredientsTags, forKey: kProductsIngredientsTagsKey)
		aCoder.encodeObject(labelsDebugTags, forKey: kProductsLabelsDebugTagsKey)
		aCoder.encodeObject(quantity, forKey: kProductsQuantityKey)
		aCoder.encodeObject(editors, forKey: kProductsEditorsKey)
		aCoder.encodeObject(entryDatesTags, forKey: kProductsEntryDatesTagsKey)
		aCoder.encodeObject(ingredientsThatMayBeFromPalmOilN, forKey: kProductsIngredientsThatMayBeFromPalmOilNKey)
		aCoder.encodeObject(nutritionGradeFr, forKey: kProductsNutritionGradeFrKey)
		aCoder.encodeObject(noNutritionData, forKey: kProductsNoNutritionDataKey)
		aCoder.encodeObject(productNameFr, forKey: kProductsProductNameFrKey)
		aCoder.encodeObject(productName, forKey: kProductsProductNameKey)
		aCoder.encodeObject(ingredientsN, forKey: kProductsIngredientsNKey)
		aCoder.encodeObject(tracesHierarchy, forKey: kProductsTracesHierarchyKey)
		aCoder.encodeObject(additivesDebugTags, forKey: kProductsAdditivesDebugTagsKey)
		aCoder.encodeObject(pnnsGroups1Tags, forKey: kProductsPnnsGroups1TagsKey)
		aCoder.encodeObject(correctorsTags, forKey: kProductsCorrectorsTagsKey)
		aCoder.encodeObject(debugTags, forKey: kProductsDebugTagsKey)
		aCoder.encodeObject(ingredientsDebug, forKey: kProductsIngredientsDebugKey)
		aCoder.encodeObject(statesTags, forKey: kProductsStatesTagsKey)
		aCoder.encodeObject(stores, forKey: kProductsStoresKey)
		aCoder.encodeObject(maxImgid, forKey: kProductsMaxImgidKey)
		aCoder.encodeObject(pnnsGroups1, forKey: kProductsPnnsGroups1Key)
		aCoder.encodeObject(categoriesDebugTags, forKey: kProductsCategoriesDebugTagsKey)
		aCoder.encodeObject(newAdditivesN, forKey: kProductsNewAdditivesNKey)
		aCoder.encodeObject(languagesCodes, forKey: kProductsLanguagesCodesKey)
		aCoder.encodeObject(nutrientLevelsTags, forKey: kProductsNutrientLevelsTagsKey)
		aCoder.encodeObject(ingredientsText, forKey: kProductsIngredientsTextKey)
		aCoder.encodeObject(uniqueScansN, forKey: kProductsUniqueScansNKey)
		aCoder.encodeObject(checkersTags, forKey: kProductsCheckersTagsKey)
		aCoder.encodeObject(traces, forKey: kProductsTracesKey)
		aCoder.encodeObject(expirationDate, forKey: kProductsExpirationDateKey)
		aCoder.encodeObject(imageFrontUrl, forKey: kProductsImageFrontUrlKey)
		aCoder.encodeObject(imageSmallUrl, forKey: kProductsImageSmallUrlKey)
		aCoder.encodeObject(additivesOldTags, forKey: kProductsAdditivesOldTagsKey)
		aCoder.encodeObject(additivesPrevN, forKey: kProductsAdditivesPrevNKey)
		aCoder.encodeObject(brandsTags, forKey: kProductsBrandsTagsKey)
		aCoder.encodeObject(categoriesHierarchy, forKey: kProductsCategoriesHierarchyKey)
		aCoder.encodeObject(languagesHierarchy, forKey: kProductsLanguagesHierarchyKey)
		aCoder.encodeObject(ingredientsTextDebug, forKey: kProductsIngredientsTextDebugKey)
		aCoder.encodeObject(packaging, forKey: kProductsPackagingKey)
		aCoder.encodeObject(imageUrl, forKey: kProductsImageUrlKey)
		aCoder.encodeObject(images, forKey: kProductsImagesKey)
		aCoder.encodeObject(labelsPrevTags, forKey: kProductsLabelsPrevTagsKey)
		aCoder.encodeObject(categories, forKey: kProductsCategoriesKey)
		aCoder.encodeObject(lastEditDatesTags, forKey: kProductsLastEditDatesTagsKey)
		aCoder.encodeObject(lastImageT, forKey: kProductsLastImageTKey)
		aCoder.encodeObject(informers, forKey: kProductsInformersKey)
		aCoder.encodeObject(editorsTags, forKey: kProductsEditorsTagsKey)
		aCoder.encodeObject(imageIngredientsThumbUrl, forKey: kProductsImageIngredientsThumbUrlKey)
		aCoder.encodeObject(imageNutritionThumbUrl, forKey: kProductsImageNutritionThumbUrlKey)
		aCoder.encodeObject(imageNutritionSmallUrl, forKey: kProductsImageNutritionSmallUrlKey)
		aCoder.encodeObject(genericName, forKey: kProductsGenericNameKey)
		aCoder.encodeObject(code, forKey: kProductsCodeKey)
		aCoder.encodeObject(statesHierarchy, forKey: kProductsStatesHierarchyKey)
		aCoder.encodeObject(ingredients, forKey: kProductsIngredientsKey)
		aCoder.encodeObject(additivesOldN, forKey: kProductsAdditivesOldNKey)
		aCoder.encodeObject(labelsPrevHierarchy, forKey: kProductsLabelsPrevHierarchyKey)
		aCoder.encodeObject(pnnsGroups2Tags, forKey: kProductsPnnsGroups2TagsKey)
		aCoder.encodeObject(categoriesPrevTags, forKey: kProductsCategoriesPrevTagsKey)
		aCoder.encodeObject(ingredientsTextFr, forKey: kProductsIngredientsTextFrKey)
		aCoder.encodeObject(ingredientsFromPalmOilTags, forKey: kProductsIngredientsFromPalmOilTagsKey)
		aCoder.encodeObject(originsTags, forKey: kProductsOriginsTagsKey)
		aCoder.encodeObject(manufacturingPlacesTags, forKey: kProductsManufacturingPlacesTagsKey)
		aCoder.encodeObject(nutritionGrades, forKey: kProductsNutritionGradesKey)
		aCoder.encodeObject(packagingTags, forKey: kProductsPackagingTagsKey)
		aCoder.encodeObject(categoriesPrevHierarchy, forKey: kProductsCategoriesPrevHierarchyKey)
		aCoder.encodeObject(interfaceVersionModified, forKey: kProductsInterfaceVersionModifiedKey)
		aCoder.encodeObject(genericNameFr, forKey: kProductsGenericNameFrKey)
		aCoder.encodeObject(codesTags, forKey: kProductsCodesTagsKey)
		aCoder.encodeObject(imageFrontThumbUrl, forKey: kProductsImageFrontThumbUrlKey)
		aCoder.encodeObject(imageFrontSmallUrl, forKey: kProductsImageFrontSmallUrlKey)
		aCoder.encodeObject(createdT, forKey: kProductsCreatedTKey)
		aCoder.encodeObject(countriesTags, forKey: kProductsCountriesTagsKey)
		aCoder.encodeObject(additivesN, forKey: kProductsAdditivesNKey)
		aCoder.encodeObject(interfaceVersionCreated, forKey: kProductsInterfaceVersionCreatedKey)
//		aCoder.encodeObject(internalIdentifier, forKey: kProductsInternalIdentifierKey)
		aCoder.encodeObject(languagesTags, forKey: kProductsLanguagesTagsKey)
		aCoder.encodeObject(nutritionDataPer, forKey: kProductsNutritionDataPerKey)
		aCoder.encodeObject(pnnsGroups2, forKey: kProductsPnnsGroups2Key)
		aCoder.encodeObject(citiesTags, forKey: kProductsCitiesTagsKey)
		aCoder.encodeObject(debugParamSortedLangs, forKey: kProductsDebugParamSortedLangsKey)
		aCoder.encodeObject(tracesTags, forKey: kProductsTracesTagsKey)
		aCoder.encodeObject(ingredientsTextWithAllergens, forKey: kProductsIngredientsTextWithAllergensKey)
		aCoder.encodeObject(categoriesTags, forKey: kProductsCategoriesTagsKey)
		aCoder.encodeObject(imageIngredientsSmallUrl, forKey: kProductsImageIngredientsSmallUrlKey)
		aCoder.encodeObject(embCodes, forKey: kProductsEmbCodesKey)
		aCoder.encodeObject(completedT, forKey: kProductsCompletedTKey)

    }

}
