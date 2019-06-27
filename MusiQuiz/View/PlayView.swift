//
//  PlayView.swift
//  MusiQuiz
//
//  Created by Vinicius Mangueira on 27/06/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit

class PlayView: UIView, ConfigurableView {
    
    lazy var songLabel = UILabel(text: "MusiQuiz")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildViewHierarchy() {
        addSubview(songLabel)
    }
    
    func setupConstraints() {
       NSLayoutConstraint.activate([
            songLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            songLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
}
