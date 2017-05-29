//
//  ProductTests.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/20/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import XCTest
@testable import FoodTracker

class ProductTests: XCTestCase {
    
    // MARK: - Store Properties
    
    var subject: Product!
    
    // MARK: - XCTests
    
    override func setUp() {
        super.setUp()
        
        guard let json = FileHelper.loadDataFromJSON(for: "ProductResponse") else {
            XCTFail()
            return
        }
        
        do {
            let productResponse = try ProductResponse(dictionary: json)
            subject = productResponse.product
        } catch {
            XCTFail()
        }
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - Unit Tests
    
    func testProduct_whenInitializedWithDictionary_matchesName() {
        XCTAssertEqual(subject.name, "Lardons fumés de qualité supérieure")
    }
    
    func testProduct_whenInitializedWithDictionary_matchesBrand() {
        XCTAssertEqual(subject.brand, "Herta")
    }
    
    func testProduct_whenInitializedWithDictionary_matchesCountries() {
        XCTAssertEqual(subject.countries, "France")
    }

}
