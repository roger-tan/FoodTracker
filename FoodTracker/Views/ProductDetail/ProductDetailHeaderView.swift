//
//  ProductDetailHeader.swift
//  FoodTracker
//
//  Created by Roger TAN on 5/28/17.
//  Copyright © 2017 Roger TAN. All rights reserved.
//

import UIKit

class ProductDetailHeaderView: UIView {

    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [self.imageView, self.titleLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        stackView.alignment = .center

        return stackView
    }()

    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }()

    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Hello World"
        titleLabel.backgroundColor = .yellow

        return titleLabel
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        setupViews()
    }

    // MARK: - Private Methods

    private func setupViews() {
        self.addSubview(self.stackView)

        guard let margins = superview?.layoutMarginsGuide else {
            return
        }

        self.stackView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        self.stackView.leftAnchor.constraint(equalTo: margins.leftAnchor).isActive = true
        self.stackView.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
        self.stackView.rightAnchor.constraint(equalTo: margins.rightAnchor).isActive = true
    }

}
