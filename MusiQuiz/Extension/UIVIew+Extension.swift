//
//  UIVIew+Extension.swift
//  MusiQuiz
//
//  Created by Thalys Viana on 27/06/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit

/* This adds an array of views within the current view */
extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { self.addSubview($0) }
    }
}
