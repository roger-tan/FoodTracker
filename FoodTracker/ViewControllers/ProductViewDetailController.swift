//
//  ProductViewDetailController.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/28/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {

    // MARK: - Stored Properties
    var viewModel: ProductDetailViewModel!

    // MARK: - IBOutlets
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var brandLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        bindViewModel()
    }

    private func bindViewModel() {
        viewModel = ProductDetailViewModel(product: Product.fake)
        title = viewModel.nameText
        nameLabel.text = viewModel.nameText
        brandLabel.text = viewModel.brandText
        countryLabel.text = viewModel.countryText
    }

}

// For testing purpose
extension Product {

    static var fake: Product {
        let json = FileHelper.loadDataFromJSON(for: "ProductResponse")
        let productResponse: ProductResponse = try! ProductResponse(dictionary: json!)
        return productResponse.product
    }

}
