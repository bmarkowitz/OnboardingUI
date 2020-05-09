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
        imageView.image = UIImage(systemName: image)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
}
