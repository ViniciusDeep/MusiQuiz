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
