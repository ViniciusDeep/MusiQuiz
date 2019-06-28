//
//  UIButton+Animations.swift
//  MusiQuiz
//
//  Created by Thalys Viana on 28/06/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit

extension UIButton {
    func pulsate() {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.8
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = false
        pulse.initialVelocity = 0.2
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
    }
}
