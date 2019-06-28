//
//  PlayView.swift
//  MusiQuiz
//
//  Created by Vinicius Mangueira on 27/06/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit

class PlayView: UIView, ConfigurableView {
    
    lazy var timerView = TimerView()
    
    lazy var firstOption: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "Opção 1"
        button.backgroundColor = .red
        return button
    }()
    
    lazy var secondOption: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "Opção 2"
        button.backgroundColor = .yellow
        return button
    }()
    
    
    lazy var thirdOption: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "Opção 3"
        button.backgroundColor = .blue
        return button
    }()
    
    lazy var quarterOption: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.text = "Opção 4"
        button.titleLabel?.textColor = .black
        button.backgroundColor = .green
        return button
    }()
    
    lazy var playSong: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "play"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildViewHierarchy() {
        let views = [timerView, playSong, firstOption, secondOption, thirdOption, quarterOption]
        addSubviews(views)
    }
    
    func setupConstraints() {
        timerView.centerXInSuperview()
        playSong.centerXInSuperview()
        
        // playSong constraints
        NSLayoutConstraint.activate([
            playSong.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            playSong.widthAnchor.constraint(equalToConstant: 200),
            playSong.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        // firstOption constraints
        NSLayoutConstraint.activate([
            firstOption.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            firstOption.topAnchor.constraint(equalTo: self.playSong.bottomAnchor, constant: 30),
            firstOption.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        // secondOption constraints
        NSLayoutConstraint.activate([
            secondOption.topAnchor.constraint(equalTo: firstOption.bottomAnchor,constant: 10),
            secondOption.leadingAnchor.constraint(equalTo: self.firstOption.leadingAnchor),
            secondOption.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        // thirdOption constraints
        NSLayoutConstraint.activate([
            thirdOption.topAnchor.constraint(equalTo: secondOption.bottomAnchor,constant: 10),
            thirdOption.leadingAnchor.constraint(equalTo: self.firstOption.leadingAnchor),
            thirdOption.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        // fourthOption constraints
       NSLayoutConstraint.activate([
            quarterOption.topAnchor.constraint(equalTo: thirdOption.bottomAnchor,constant: 10),
            quarterOption.leadingAnchor.constraint(equalTo: self.firstOption.leadingAnchor),
            quarterOption.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
}
