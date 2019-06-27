//
//  ConfigurableView.swift
//  MusiQuiz
//
//  Created by Vinicius Mangueira on 27/06/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit


protocol ConfigurableView: class{
    func buildViewHierarchy()
    func setupConstraints()
}
