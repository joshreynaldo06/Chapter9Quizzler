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
    
    let quizArray = ["Four plus two is syx","Asu + Jaran = AsuJaran","Kodok itu ikan"]
    
    var quizCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonClicked (_ sender: UIButton){
        if quizCount < quizArray.count-1{
            quizCount += 1
            updateUI()
        }
        
    }
    
    func updateUI(){
        questionTextLabel.text = quizArray[quizCount]
    }
    

}

