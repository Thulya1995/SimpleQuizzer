//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Thulya Palihapitiya on 12/6/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain {
    let quiz = [
    Question(questionText: "National day in Sr Lnaka is 4th of February", answer: "True"),
    Question(questionText: " Two + four is Seven", answer: "False"),
    Question(questionText: "five is greater than ten", answer: "False")]
    
    var qNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[qNumber].answer{
            score+=1
            return true
        }else{
            return false
        }
    }
    
    func getQuizText() -> String{
        let text = quiz[qNumber].questionText
        return text
    }
    
    func getProgress() -> Float{
        let value = Float(qNumber + 1) / Float(quiz.capacity)
        return value
    }
    
    mutating func nextQuestion(){
        if qNumber < quiz.capacity-1{
            qNumber += 1
        }else{
            qNumber = 0
            score = 0
        }
    }
    
    func getScore() ->Int{
        return score
    }
}
