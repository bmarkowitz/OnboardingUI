//
//  TextBlockView.swift
//  SplashScreen
//
//  Created by Brett Markowitz on 12/22/19.
//  Copyright © 2019 Brett Markowitz. All rights reserved.
//

import UIKit

class TextBlockView: UIStackView {
    
    var header: String!
    var subtitle: String!

    init(header: String, subtitle: String) {
        self.header = header
        self.subtitle = subtitle
        
        super.init(frame: .zero)
        setupView()
    }

    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    func setupView() {
        let headerLabel = UILabel()
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.text = header
        headerLabel.textColor = .systemGray
        
        let subtitleLabel = UILabel()
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.text = subtitle
        subtitleLabel.textColor = .systemGray
        
        addArrangedSubview(headerLabel)
        addArrangedSubview(subtitleLabel)
    }
}
