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
    var continueButton: UIButton!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .systemBackground
        
        mainStackView = UIStackView()
        mainStackView.axis = .vertical
        mainStackView.spacing = 25
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let infoBlock = InfoBlockView(imageName: "gear", header: "Test Header", subtitle: "This is a test subtitle.")
        let infoBlockTwo = InfoBlockView(imageName: "gear", header: "Test Header", subtitle: "This is a test subtitle. This is a longer description of the item. This is an even longer description of the item.")
        let infoBlockThree = InfoBlockView(imageName: "gear", header: "Test Header", subtitle: "This is a test subtitle. This is a longer description of the item.")

        mainStackView.addArrangedSubview(infoBlockTwo)
        mainStackView.addArrangedSubview(infoBlock)
        mainStackView.addArrangedSubview(infoBlockThree)
        
        continueButton = UIButton(type: .system)
        continueButton.layer.cornerRadius = 15
        continueButton.setTitleColor(.white, for: .normal)
        continueButton.setAttributedTitle(NSAttributedString(string: "Continue", attributes: [.foregroundColor : UIColor.white, .font : UIFont.preferredFont(forTextStyle: .headline)]), for: .normal)
        continueButton.backgroundColor = .systemBlue
        continueButton.tintColor = .blue
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(continueButton)
        view.addSubview(mainStackView)
        
        NSLayoutConstraint.activate([
            mainStackView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            mainStackView.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor),
            mainStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 3/4),
            continueButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            continueButton.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            continueButton.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor),
            continueButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

