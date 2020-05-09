//
//  MainViewController.swift
//  SplashScreen
//
//  Created by Brett Markowitz on 12/22/19.
//  Copyright © 2019 Brett Markowitz. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        view.backgroundColor = .systemBackground
    }
    
    override func viewDidAppear(_ animated: Bool) {
        present(OBViewController(), animated: true)
    }
}
