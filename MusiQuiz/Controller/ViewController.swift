//
//  ViewController.swift
//  MusiQuiz
//
//  Created by Vinicius Mangueira on 27/06/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ConfigurableView {
    let playView = PlayView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        buildViewHierarchy()
        setupConstraints()
    }
    
    func buildViewHierarchy() {
        view.addSubview(playView)
    }
    
    func setupConstraints() {
        playView.fillSuperview()
    }
}
