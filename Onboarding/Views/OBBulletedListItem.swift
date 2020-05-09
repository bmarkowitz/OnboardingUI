//
//  OBBulletedListItem.swift
//  SplashScreen
//
//  Created by Brett Markowitz on 5/8/20.
//  Copyright © 2020 Brett Markowitz. All rights reserved.
//

import UIKit

class OBBulletedListItem: UIView {
    
    var imageContainer = UIView()
    var imageView = UIImageView()
    var stackView = UIStackView()
    var titleLabel = UILabel()
    var descriptionLabel = UILabel()
    
    init(with title: String, description: String, image: String) {
        super.init(frame: .zero)
        titleLabel.text = title
        descriptionLabel.text = description
        imageView.image = UIImage(systemName: image, withConfiguration: UIImage.SymbolConfiguration(textStyle: .title1))
        
        configureImageView()
        configureTitleLabel()
        configureDescriptionLabel()
        configureStackView()
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    private func configureImageView() {
        imageContainer.translatesAutoresizingMaskIntoConstraints = false
        imageContainer.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        addSubview(imageContainer)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        imageContainer.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageContainer.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            imageView.topAnchor.constraint(equalTo: imageContainer.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: imageContainer.leadingAnchor),
            imageView.bottomAnchor.constraint(equalTo: imageContainer.bottomAnchor),
            imageView.trailingAnchor.constraint(equalTo: imageContainer.trailingAnchor),
            imageView.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor),
            imageView.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor)
        ])
    }
    
    private func configureTitleLabel() {
        titleLabel.font = UIFont.preferredFont(forTextStyle: .headline)
    }
    
    private func configureDescriptionLabel() {
        descriptionLabel.font = UIFont.preferredFont(forTextStyle: .body)
        descriptionLabel.textColor = .secondaryLabel
        descriptionLabel.numberOfLines = 0
    }
    
    private func configureStackView() {
        stackView.axis = .vertical
        stackView.spacing = 2
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(descriptionLabel)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: imageContainer.trailingAnchor, constant: 20),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
