//
//  OBContentView.swift
//  SplashScreen
//
//  Created by Brett Markowitz on 5/8/20.
//  Copyright © 2020 Brett Markowitz. All rights reserved.
//

import UIKit

class OBContentView: UIView {
    
    var bulletedList: OBBulletedList!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        configureList()
        createItems()
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    private func configureList() {
        bulletedList = OBBulletedList()
        
        addSubview(bulletedList)
        
        let inset: CGFloat = UIScreen.main.bounds.width / 10
        
        NSLayoutConstraint.activate([
            bulletedList.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            bulletedList.leadingAnchor.constraint(equalTo: leadingAnchor, constant: inset),
            bulletedList.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -inset),
            bulletedList.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    private func createItems() {
        bulletedList.addItem(with: "Test Item", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.", imageName: "chart.bar.fill")
        bulletedList.addItem(with: "Test Item", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.", imageName: "chart.bar.fill")
        bulletedList.addItem(with: "Test Item", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.", imageName: "chart.bar.fill")
    }
}
