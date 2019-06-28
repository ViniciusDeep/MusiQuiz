//
//  PlayView.swift
//  MusiQuiz
//
//  Created by Vinicius Mangueira on 27/06/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import UIKit

enum SelectedButton {
    case choice0(button: UIButton)
    case choice1(button: UIButton)
    case choice2(button: UIButton)
    case choice3(button: UIButton)
}

protocol PlayViewDelegate: class {
    func choiceButtonDidClick(button: SelectedButton)
}

class PlayView: UIView, ConfigurableView {
    
    lazy var timerView = TimerView()
    
    lazy var choiceOneButton: ChoiceButton = {
        let button = ChoiceButton()
        button.tag = 0
        button.addTarget(self, action: #selector(choiceButtonClicked), for: .touchUpInside)
        return button
    }()
    
    lazy var choiceTwoButton: ChoiceButton = {
        let button = ChoiceButton()
        button.tag = 1
        button.addTarget(self, action: #selector(choiceButtonClicked), for: .touchUpInside)
        return button
    }()
    
    lazy var choiceThreeButton: ChoiceButton = {
        let button = ChoiceButton()
        button.tag = 2
        button.addTarget(self, action: #selector(choiceButtonClicked), for: .touchUpInside)
        return button
    }()
    
    lazy var choiceFourButton: ChoiceButton = {
        let button = ChoiceButton()
        button.tag = 3
        button.addTarget(self, action: #selector(choiceButtonClicked), for: .touchUpInside)
        return button
    }()
    
    lazy var playSong: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "play"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    weak var delegate: PlayViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildViewHierarchy() {
        let views = [timerView, playSong, choiceOneButton, choiceTwoButton, choiceThreeButton, choiceFourButton]
        addSubviews(views)
    }
    
    @objc func choiceButtonClicked(_ sender: UIButton) {
        sender.pulsate() // Animate button with pulse effect
        
        switch sender.tag {
        case 0:
            delegate?.choiceButtonDidClick(button: .choice0(button: sender))
        case 1:
            delegate?.choiceButtonDidClick(button: .choice1(button: sender))
        case 2:
            delegate?.choiceButtonDidClick(button: .choice2(button: sender))
        case 3:
            delegate?.choiceButtonDidClick(button: .choice3(button: sender))
        default:
            print("Button clicked!")
        }
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
        
        // choiceOneButton constraints
        NSLayoutConstraint.activate([
            choiceOneButton.topAnchor.constraint(equalTo: self.playSong.bottomAnchor, constant: 30),
            choiceOneButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            choiceOneButton.heightAnchor.constraint(equalToConstant: 48),
            choiceOneButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        // choiceTwoButton constraints
        NSLayoutConstraint.activate([
            choiceTwoButton.topAnchor.constraint(equalTo: choiceOneButton.bottomAnchor,constant: 10),
            choiceTwoButton.leadingAnchor.constraint(equalTo: self.choiceOneButton.leadingAnchor),
            choiceTwoButton.heightAnchor.constraint(equalToConstant: 48),
            choiceTwoButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        // choiceThreeButton constraints
        NSLayoutConstraint.activate([
            choiceThreeButton.topAnchor.constraint(equalTo: choiceTwoButton.bottomAnchor,constant: 10),
            choiceThreeButton.leadingAnchor.constraint(equalTo: self.choiceOneButton.leadingAnchor),
            choiceThreeButton.heightAnchor.constraint(equalToConstant: 48),
            choiceThreeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        // choiceFourButton constraints
       NSLayoutConstraint.activate([
            choiceFourButton.topAnchor.constraint(equalTo: choiceThreeButton.bottomAnchor,constant: 10),
            choiceFourButton.leadingAnchor.constraint(equalTo: self.choiceOneButton.leadingAnchor),
            choiceFourButton.heightAnchor.constraint(equalToConstant: 48),
            choiceFourButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
}
