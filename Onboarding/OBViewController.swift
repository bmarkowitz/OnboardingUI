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
        configureContentView()
        configureButtonTray()
    }
    
    private func configureViewController() {
        view.backgroundColor = .systemBackground
        isModalInPresentation = true
    }
    
    private func configureScrollView() {
        scrollView = UIScrollView()
        scrollView.backgroundColor = .systemBackground
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
            headerView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 75),
            headerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 12),
            headerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -12)
        ])
    }
    
    private func configureContentView() {
        contentView = OBContentView()
        scrollView.addSubview(contentView)
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
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
