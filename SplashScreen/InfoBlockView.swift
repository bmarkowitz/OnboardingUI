//
//  InfoBlockView.swift
//  SplashScreen
//
//  Created by Brett Markowitz on 12/22/19.
//  Copyright © 2019 Brett Markowitz. All rights reserved.
//

import UIKit

class InfoBlockView: UIStackView {
    
    var imageView: UIImageView!
    var textBlock: TextBlockView!
    let configuration = UIImage.SymbolConfiguration(textStyle: .largeTitle)

    init(imageName: String, header: String, subtitle: String) {
        imageView = UIImageView(image: UIImage(systemName: imageName, withConfiguration: configuration))
        textBlock = TextBlockView(header: header, subtitle: subtitle)
        
        super.init(frame: .zero)
        setupView()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        
        setupView()
    }
    
    func setupView() {
        axis = .horizontal
        alignment = .center
        spacing = 20
        
        addArrangedSubview(imageView)
        addArrangedSubview(textBlock)
    }
}
