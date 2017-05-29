//
//  ProductDetailView.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/28/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import UIKit

class ProductDetailView: UIView {

    // MARK: - Properties

    lazy var scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        scrollView.addSubview(self.header)
        scrollView.translatesAutoresizingMaskIntoConstraints = false

        return scrollView
    }()

    lazy var header: ProductDetailHeaderView = {
        var header = ProductDetailHeaderView()
        header.translatesAutoresizingMaskIntoConstraints = false

        return header
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        setupView()
    }

    func setupView() {
        self.addSubview(scrollView)
        self.backgroundColor = .red

        scrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }

}
