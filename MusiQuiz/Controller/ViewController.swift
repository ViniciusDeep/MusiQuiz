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
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        buildViewHierarchy()
        setupConstraints()
        playView.delegate = self
    }
    
    func buildViewHierarchy() {
        view.addSubview(playView)
    }
    
    func setupConstraints() {
        playView.fillSuperview()
    }
}

extension ViewController: PlayViewDelegate {
    func choiceButtonDidClick(button: SelectedButton) {
        switch button {
        case .choice0(let btn):
            print("Button \(btn.tag) clicked")
        case .choice1(let btn):
            print("Button \(btn.tag) clicked")
        case .choice2(let btn):
            print("Button \(btn.tag) clicked")
        case .choice3(let btn):
            print("Button \(btn.tag) clicked")
        }
    }
}
