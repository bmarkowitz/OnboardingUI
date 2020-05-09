//
//  OBHeaderView.swift
//  SplashScreen
//
//  Created by Brett Markowitz on 5/8/20.
//  Copyright © 2020 Brett Markowitz. All rights reserved.
//

import UIKit

class OBHeaderView: UIView {

    var headerLabel: UILabel!
    var title: String!
    
    init(with title: String) {
        super.init(frame: .zero)
        self.title = title
        translatesAutoresizingMaskIntoConstraints = false
        configureHeaderLabel()
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    private func configureHeaderLabel() {
        headerLabel = UILabel()
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let titleParagraphStyle = NSMutableParagraphStyle()
        titleParagraphStyle.alignment = .center
        
        headerLabel.attributedText = NSAttributedString(string: title, attributes: [
            .foregroundColor : UIColor.label,
            .font : UIFont.systemFont(ofSize: 30, weight: .bold),
            .paragraphStyle : titleParagraphStyle
        ])
        addSubview(headerLabel)
        
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: topAnchor),
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            headerLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
