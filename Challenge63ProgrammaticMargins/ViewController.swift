//
//  ViewController.swift
//  Challenge63ProgrammaticMargins
//
//  Created by Herve Desrosiers on 2020-03-09.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let largePadding: CGFloat = 50
    private let smallPadding: CGFloat = 25

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.addSubview(greenView)
        
        if #available(iOS 11.0, *) {
            greenView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: smallPadding, leading: smallPadding, bottom: smallPadding, trailing: smallPadding)
            view.directionalLayoutMargins = NSDirectionalEdgeInsets(top: largePadding, leading: largePadding, bottom: largePadding, trailing: largePadding)
            NSLayoutConstraint.activate([
                greenView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
                greenView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
                greenView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
                greenView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
            ])
        } else {
            greenView.layoutMargins = UIEdgeInsets(top: smallPadding, left: smallPadding, bottom: smallPadding, right: smallPadding)
            NSLayoutConstraint.activate([
                greenView.topAnchor.constraint(equalTo: safeTopAnchor, constant: largePadding),
                greenView.leadingAnchor.constraint(equalTo: safeLeadingAnchor, constant: largePadding),
                greenView.trailingAnchor.constraint(equalTo: safeTrailingAnchor, constant: -largePadding),
                greenView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)
            ])
        }
        
    }
    
    private let greenView: TileView = {
        let view = TileView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .green
        return view
    }()


}

