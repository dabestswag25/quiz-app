//
//  Question.swift
//  Quiz
//
//  Created by UCode on 12/15/17.
//  Copyright © 2017 Preston. All rights reserved.
//

import Foundation

class Question {
    
    var text:    String
    var answers: [Answer]
    var value:   Int
    
    init(text: String, answers: [Answer], value: Int) {
        self.text    = text
        self.answers = answers
        self.value   = value
    }
    
}
