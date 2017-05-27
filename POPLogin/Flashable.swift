//
//  Flashable.swift
//  POPLogin
//
//  Created by Weijie Lin on 5/27/17.
//  Copyright © 2017 Weijie Lin. All rights reserved.
//

import UIKit

protocol Flashable { }

extension Flashable where Self: UIView {
    func flash() {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn, animations: {
            self.alpha = 1.0
        }) { (animationComplete) in
            if animationComplete == true {
                UIView.animate(withDuration: 0.3, delay: 2, options: .curveEaseOut, animations: {
                    self.alpha = 0.0
                }, completion: nil)
            }
        }
    }
}
