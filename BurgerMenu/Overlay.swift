//
//  Overlay.swift
//  BurgerMenu
//
//  Created by Natalia Ossipova on 18.03.2016.
//  Copyright © 2016 Natalia Ossipova. All rights reserved.
//

import UIKit

class Overlay: UIView {

    let maxAlpha = CGFloat(0.5)

    override init(frame: CGRect) {
        super.init(frame: frame)

        configure()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        configure()
    }

    override func didMoveToSuperview() {
        super.didMoveToSuperview()

        addConstraints()
    }

    private func configure() {
        backgroundColor = UIColor.blackColor()
        alpha = 0.0
    }

    private func addConstraints() {
        translatesAutoresizingMaskIntoConstraints = false
        superview?.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("|[self]|", options: [], metrics: nil, views: ["self": self]))
        superview?.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-20-[self]|", options: [], metrics: nil, views: ["self": self]))
    }
}
