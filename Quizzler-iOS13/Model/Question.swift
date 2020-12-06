//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Thulya Palihapitiya on 12/6/20.
//

import Foundation

struct Question{
    var questionText: String
    var answer: String
    
    init(questionText: String,answer:String){
        self.questionText = questionText
        self.answer = answer
    }

}
