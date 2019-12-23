//
//  ViewController.swift
//  SplashScreen
//
//  Created by Brett Markowitz on 12/22/19.
//  Copyright © 2019 Brett Markowitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mainStackView: UIStackView!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .systemBackground
        
        mainStackView = UIStackView()
        mainStackView.axis = .vertical
        mainStackView.spacing = 25
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let infoBlock = InfoBlockView(imageName: "gear", header: "Test Header", subtitle: "This is a test subtitle.")
        let infoBlockTwo = InfoBlockView(imageName: "gear", header: "Test Header", subtitle: "This is a test subtitle. This is a longer description of the item.")
        let infoBlockThree = InfoBlockView(imageName: "gear", header: "Test Header", subtitle: "This is a test subtitle. This is a longer description of the item.")

        mainStackView.addArrangedSubview(infoBlockTwo)
        mainStackView.addArrangedSubview(infoBlock)
        mainStackView.addArrangedSubview(infoBlockThree)
        view.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            mainStackView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            mainStackView.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor),
            mainStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 2/3)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

