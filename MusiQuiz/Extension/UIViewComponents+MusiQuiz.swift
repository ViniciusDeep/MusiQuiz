//
//  UIViewComponents+MusiQuiz.swift
//  MusiQuiz
//
//  Created by Vinicius Mangueira on 27/06/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit

extension UILabel {
    convenience init(text: String) {
        self.init()
        self.text = text
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
}

extension CAShapeLayer {
    convenience init(with view: UIView, strokeColor: CGColor, opacity: Float?) {
        self.init()
        let circularPath = UIBezierPath(arcCenter: CGPoint(x: view.frame.width, y: view.frame.height), radius: 80, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        self.speed = 0.5
        self.strokeStart = 0
        self.path = circularPath.cgPath
        self.strokeColor = strokeColor
        self.lineWidth = 3
        self.fillColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        if let opacity = opacity {
            self.opacity = opacity
        }
    }
}
