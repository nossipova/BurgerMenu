//
//  UIViewControllerExtension.swift
//  BurgerMenu
//
//  Created by Natalia Ossipova on 18.03.2016.
//  Copyright © 2016 Natalia Ossipova. All rights reserved.
//

import UIKit

extension UIViewController {

    func showOverlay(duration: NSTimeInterval) {
        let overlay = Overlay(frame: view.frame)
        view.addSubview(overlay)

        UIView.animateWithDuration(duration) {
            overlay.alpha = overlay.maxAlpha
        }
    }

    func hideOverlay(duration: NSTimeInterval) {
        UIView.animateWithDuration(duration, animations: {
            self.view.subviews.last?.alpha = 0.0
            }, completion: { finished in
                self.view.subviews.last?.removeFromSuperview()
        })
    }
}
