//
//  StartViewController.swift
//  BurgerMenu
//
//  Created by Natalia Ossipova on 18.03.2016.
//  Copyright © 2016 Natalia Ossipova. All rights reserved.
//

import UIKit

class StartViewController: UIViewController, UIViewControllerTransitioningDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.clipsToBounds = true
    }

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        showOverlay(0.5)
        if segue.identifier == "ShowBurgerMenu" {
            (segue.destinationViewController as UIViewController).transitioningDelegate = self
        }
    }

    // MARK: - Interface Builder Actions

    @IBAction func unwindFromBurgerMenu(segue: UIStoryboardSegue) {
        hideOverlay(0.5)
    }

    // MARK: - View Controller Transitioning Delegate

    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return OpenBurgerMenuTransition()
    }

    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return CloseBurgerMenuTransition()
    }
}
