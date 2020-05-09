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
        axis = .vertical
        alignment = .leading
        
        let headerLabel = UILabel()
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.attributedText = NSAttributedString(string: header, attributes: [
            .foregroundColor : UIColor.label,
            .font : UIFont.preferredFont(forTextStyle: .headline)
        ])
        
        let subtitleLabel = UILabel()
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.attributedText = NSAttributedString(string: subtitle, attributes: [
            .foregroundColor : UIColor.secondaryLabel,
            .font : UIFont.preferredFont(forTextStyle: .body),
        ])
        subtitleLabel.numberOfLines = 0

        addArrangedSubview(headerLabel)
        addArrangedSubview(subtitleLabel)
    }
}
