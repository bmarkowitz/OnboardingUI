//
//  InfoBlockView.swift
//  SplashScreen
//
//  Created by Brett Markowitz on 12/22/19.
//  Copyright © 2019 Brett Markowitz. All rights reserved.
//

import UIKit

class InfoBlockView: UIStackView {
    
    var image: UIImageView!
    var textBlock: TextBlockView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        image = UIImageView(image: UIImage(systemName: "gear"))
        textBlock = TextBlockView(header: "Test Header", subtitle: "This is a test subtitle.")
        
        addArrangedSubview(image)
        addArrangedSubview(textBlock)
    }

    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
}
