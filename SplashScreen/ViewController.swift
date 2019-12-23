//
//  ViewController.swift
//  SplashScreen
//
//  Created by Brett Markowitz on 12/22/19.
//  Copyright © 2019 Brett Markowitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        
        let infoBlock = InfoBlockView()
        infoBlock.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(infoBlock)
        
        NSLayoutConstraint.activate([
            infoBlock.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor),
            infoBlock.centerYAnchor.constraint(equalTo: view.layoutMarginsGuide.centerYAnchor)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

