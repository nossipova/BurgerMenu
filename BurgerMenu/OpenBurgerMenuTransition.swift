//
//  OpenBurgerMenuTransition.swift
//  BurgerMenu
//
//  Created by Natalia Ossipova on 18.03.2016.
//  Copyright © 2016 Natalia Ossipova. All rights reserved.
//

import UIKit

class OpenBurgerMenuTransition: NSObject, UIViewControllerAnimatedTransitioning {

    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.5
    }

    func animateTransition(context: UIViewControllerContextTransitioning) {
        let controller = context.viewControllerForKey(UITransitionContextToViewControllerKey)!
        let finalFrame = context.finalFrameForViewController(controller)
        controller.view.frame = CGRectOffset(finalFrame, -UIScreen.mainScreen().bounds.size.width, 0.0)
        context.containerView()?.addSubview(controller.view)

        UIView.animateWithDuration(transitionDuration(context), delay: 0.0, options: .CurveEaseOut, animations: {
            controller.view.frame = finalFrame
            }, completion: { finished in
                context.completeTransition(true)
        })
    }
}
