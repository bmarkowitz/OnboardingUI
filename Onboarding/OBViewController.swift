//
//  OBViewController.swift
//  SplashScreen
//
//  Created by Brett Markowitz on 12/22/19.
//  Copyright © 2019 Brett Markowitz. All rights reserved.
//

import UIKit

class OBViewController: UIViewController {
    
    var scrollView: UIScrollView!
    var headerView: OBHeaderView!
    var contentView: OBContentView!
    var buttonTray: OBButtonTray!
    
    var bulletedList: OBBulletedList!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewController()
        configureScrollView()
        configureHeaderView()
        configureButtonTray()
    }
    
    private func configureViewController() {
        view.backgroundColor = .systemBackground
        isModalInPresentation = true
    }
    
    private func configureScrollView() {
        scrollView = UIScrollView()
        scrollView.backgroundColor = .systemBackground
        scrollView.alwaysBounceVertical = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height * (3/4))
        ])
    }
    
    private func configureHeaderView() {
        headerView = OBHeaderView(with: "Welcome to Onboarding")
        scrollView.addSubview(headerView)
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private func configureButtonTray() {
        buttonTray = OBButtonTray()
        buttonTray.backgroundColor = .secondarySystemBackground
        
        view.addSubview(buttonTray)
        
        NSLayoutConstraint.activate([
            buttonTray.topAnchor.constraint(equalTo: scrollView.bottomAnchor),
            buttonTray.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            buttonTray.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            buttonTray.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
}
