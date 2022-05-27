//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var barProgress: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    let quiz=[["Four + Two is equal to six.","True"],
              ["Five - Three is greater tahn one.","False"]
              ,["Three + eight is equal to eleven.","True"]]
    var questionNumber = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        updateUI()
        
    }
    @IBAction func answerButtonPressed(_ sender: Any) {
        let userAnswer = (sender as AnyObject).currentTitle
        let actualAnswer = quiz[questionNumber][1]
        if userAnswer == actualAnswer {
            print("Right")
            
        }
        else
        {
            print("Wrong")
        }
        if questionNumber + 1  < quiz.count{
        questionNumber += 1
        updateUI()
        }
        else {
            
            trueButton.isHidden = true
            falseButton.isHidden = true
            questionComlete()
        }
            
    }
    func updateUI(){
        questionLabel.text = quiz[questionNumber][0]
    }
    func questionComlete(){
        questionLabel.text = "You completed your test."
    }

}

