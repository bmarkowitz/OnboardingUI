//
//  OBBulletedList.swift
//  SplashScreen
//
//  Created by Brett Markowitz on 5/8/20.
//  Copyright © 2020 Brett Markowitz. All rights reserved.
//

import UIKit

class OBBulletedList: UIView {
    
    var items = [OBBulletedListItem]()
    var stackView: UIStackView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureList()
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    private func configureList() {
        translatesAutoresizingMaskIntoConstraints = false
        
        stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 12
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    func addItem(with title: String, description: String, imageName: String) {
        let listItem = OBBulletedListItem(with: title, description: description, image: imageName)
        items.append(listItem)
        stackView.addArrangedSubview(listItem)
    }
}
