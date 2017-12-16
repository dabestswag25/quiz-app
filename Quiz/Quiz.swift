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
    
    init(questions: [Question], score: Int) {
        self.questions = questions
        self.score     = score
    }
    
}
