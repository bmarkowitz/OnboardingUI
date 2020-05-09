//
//  OBButtonTray.swift
//  SplashScreen
//
//  Created by Brett Markowitz on 5/8/20.
//  Copyright © 2020 Brett Markowitz. All rights reserved.
//

import UIKit

class OBButtonTray: UIView {
    
    var button: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
        configureButton()
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    private func configureView() {
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configureButton() {
        button = UIButton(type: .system)
        
        button.layer.cornerRadius = 15
        button.layer.cornerCurve = .continuous
        button.setTitleColor(.white, for: .normal)
        button.setAttributedTitle(NSAttributedString(string: "Continue", attributes: [.foregroundColor : UIColor.white, .font : UIFont.preferredFont(forTextStyle: .headline)]), for: .normal)
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false

        addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: centerYAnchor),
            button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

}
