//
//  Quiz.swift
//  Quiz
//
//  Created by UCode on 12/15/17.
//  Copyright © 2017 Preston. All rights reserved.
//

import Foundation

class Quiz {
    
    var questions: [Question]
    var score:     Int
    
    var currentQuestionIndex: Int
    
    var currentQuestion: Question {
        return questions[currentQuestionIndex]
    }
    
    var currentQuestionNumber: Int {
        return currentQuestionIndex + 1
    }
    
    init(questions: [Question]) {
        
        self.questions       = questions
        score                = 0
        
        currentQuestionIndex = 0
        
    }
    
    func increaseScore() {
        score += 1
    }
    
    func reset() {
        currentQuestionIndex = 0
        score                = 0
    }
    
    func next() {
        currentQuestionIndex += 1
    }
    
}
