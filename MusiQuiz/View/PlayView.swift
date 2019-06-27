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
    
    lazy var firstOpition: UIButton = {
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
        button.backgroundColor = .black
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
        addSubview(songLabel)
        addSubview(playSong)
        addSubview(firstOpition)
        addSubview(secondOption)
        addSubview(thirdOption)
        addSubview(quarterOption)
    }
    
    func setupConstraints() {
       NSLayoutConstraint.activate([
            songLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            songLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            playSong.topAnchor.constraint(equalTo: self.songLabel.bottomAnchor, constant: 20),
            playSong.widthAnchor.constraint(equalToConstant: 200),
            playSong.heightAnchor.constraint(equalToConstant: 200),
            playSong.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            firstOpition.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            firstOpition.topAnchor.constraint(equalTo: self.playSong.bottomAnchor, constant: 100),
            secondOption.leadingAnchor.constraint(equalTo: self.firstOpition.trailingAnchor, constant: 20),
            secondOption.topAnchor.constraint(equalTo: self.firstOpition.topAnchor),
            thirdOption.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            thirdOption.topAnchor.constraint(equalTo: self.firstOpition.bottomAnchor, constant: 100),
            quarterOption.leadingAnchor.constraint(equalTo: self.firstOpition.trailingAnchor, constant: 20),
            quarterOption.topAnchor.constraint(equalTo: self.secondOption.topAnchor)
        ])
    }
}
