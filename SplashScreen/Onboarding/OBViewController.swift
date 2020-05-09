//
//  OBViewController.swift
//  SplashScreen
//
//  Created by Brett Markowitz on 12/22/19.
//  Copyright © 2019 Brett Markowitz. All rights reserved.
//

import UIKit

class OBViewController: UIViewController {
    
    var scrollView: OBScrollView!
    var buttonTray: OBButtonTray!
    
    var headerLabel: UILabel!
    var mainStackView: UIStackView!
    var continueButton: UIButton!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .systemBackground
        
        headerLabel = UILabel()
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.attributedText = NSAttributedString(string: "What's New", attributes: [
            .foregroundColor : UIColor.label,
            .font : UIFont.systemFont(ofSize: 36, weight: .bold)
        ])
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        
        mainStackView = UIStackView()
        mainStackView.axis = .vertical
        mainStackView.spacing = 25
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        
        let infoBlock = InfoBlockView(imageName: "chart.bar.fill", header: "Test Header", subtitle: "This is a test subtitle.")
        let infoBlockTwo = InfoBlockView(imageName: "gear", header: "Another Test Header", subtitle: "This is a test subtitle. This is a longer description of the item. This is an even longer description of the item.")
        let infoBlockThree = InfoBlockView(imageName: "person.crop.circle.fill.badge.xmark", header: "Final Test Header", subtitle: "This is a test subtitle. This is a longer description of the item.")

        mainStackView.addArrangedSubview(infoBlock)
        mainStackView.addArrangedSubview(infoBlockTwo)
        mainStackView.addArrangedSubview(infoBlockThree)
        
        continueButton = UIButton(type: .system)
        continueButton.layer.cornerRadius = 15
        continueButton.layer.cornerCurve = .continuous
        continueButton.setTitleColor(.white, for: .normal)
        continueButton.setAttributedTitle(NSAttributedString(string: "Continue", attributes: [.foregroundColor : UIColor.white, .font : UIFont.preferredFont(forTextStyle: .headline)]), for: .normal)
        continueButton.backgroundColor = .systemBlue
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(headerLabel)
        view.addSubview(mainStackView)
        view.addSubview(continueButton)
        
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 50),
            headerLabel.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            mainStackView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            mainStackView.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 50),
            mainStackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 5/6),
            continueButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -25),
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
