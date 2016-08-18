//
//  ProductViewCell.swift
//  OpenFoodFacts
//
//  Created by Roger TAN on 8/18/16.
//  Copyright © 2016 Roger TAN. All rights reserved.
//

import UIKit

class ProductViewCell: UITableViewCell {

    var viewModel: ProductViewModel? {
        didSet {
            self.textLabel?.text = viewModel?.nameText
        }
    }

}
