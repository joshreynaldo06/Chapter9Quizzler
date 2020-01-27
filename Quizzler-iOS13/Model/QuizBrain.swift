//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Joshua Citra on 23/01/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    let quizArray = [Quiz(q: "Four plus two is syx", a: "True"), Quiz(q: "Asu + Jaran = AsuJaran", a: "True"), Quiz(q: "Kodok itu ikan", a: "False")]
      
    var quizCount = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer:String) -> Bool{
        print(userAnswer)
        if userAnswer == quizArray[quizCount].answer{
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String{
        return quizArray[quizCount].question
    }
    
    
    func getProgress() -> Float{
        let progress = Float(quizCount) / Float(quizArray.count)
        return progress
    }
    
    mutating func getScore() -> Int {
           return score
       }
    
    mutating func nextQuestion() {
        if quizCount + 1 < quizArray.count{
            self.quizCount += 1
        } else {
            self.quizCount = 0
        }
    }
}
