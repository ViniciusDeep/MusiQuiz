//
//  TimerView.swift
//  MusiQuiz
//
//  Created by Vinicius Mangueira on 28/06/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit


class TimerView: UIView, ConfigurableView {
 
    lazy var trackLayer = CAShapeLayer(with: self, strokeColor: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1).cgColor, opacity: 0.6)
    
    lazy var timeLabel = UILabel(text: "30")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func buildViewHierarchy() {
        self.layer.addSublayer(trackLayer)
        self.addSubview(timeLabel)
        timeLabel.font = .boldSystemFont(ofSize: 28)
    }
    
    func setupConstraints() {
        self.timeLabel.centerInSuperview()
        
        
        NSLayoutConstraint.activate([
            self.timeLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: self.frame.height/2 + 20)
            ])
        
    }
}
