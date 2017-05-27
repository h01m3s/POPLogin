//
//  Jitterable.swift
//  POPLogin
//
//  Created by Weijie Lin on 5/27/17.
//  Copyright © 2017 Weijie Lin. All rights reserved.
//

import UIKit

protocol Jitterable { }

extension Jitterable where Self: UIView {
    func jitter() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        // set object back to original position
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint.init(x: self.center.x - 5.0, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint.init(x: self.center.x + 5.0, y: self.center.y))
        layer.add(animation, forKey: "position")
    }
}
