//
//  TileView.swift
//  Challenge63ProgrammaticMargins
//
//  Created by Herve Desrosiers on 2020-03-09.
//  Copyright © 2020 Herve Desrosiers. All rights reserved.
//

import UIKit

class TileView: UIView {

    private let blueView = UIView.coloredView(color: .blue)
    private let redView = UIView.coloredView(color: .red)
    private let spacing: CGFloat = 25
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        addSubview(blueView)
        addSubview(redView)
        NSLayoutConstraint.activate([
            blueView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            blueView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            blueView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            redView.leadingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: spacing),
            redView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            redView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            redView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            redView.widthAnchor.constraint(equalTo: blueView.widthAnchor)
        ])
    }
    
}

private extension UIView {
    static func coloredView(color: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = color
        return view
    }
}
