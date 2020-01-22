//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionTextLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quizArray = [["Four plus two is syx", "True"],["Asu + Jaran = AsuJaran", "True"],["Kodok itu ikan", "False"]]
    
    var quizCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonClicked (_ sender: UIButton){
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quizArray[quizCount][1]
        
        if userAnswer == actualAnswer {
            print("Bener")
        } else {
            print("Salah")
        }
        
        if quizCount < quizArray.count-1{
            quizCount += 1
            updateUI()
        } else {
            print("End of the question")
            quizCount = 0
            updateUI()
        }
        
    }
    
    func updateUI(){
        questionTextLabel.text = quizArray[quizCount][0]
    }
    

}

