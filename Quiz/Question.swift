//
//  Question.swift
//  Quiz
//
//  Created by UCode on 12/15/17.
//  Copyright © 2017 Preston. All rights reserved.
//

import Foundation

struct Question {
    
    var text:    String
    var answers: [Answer]
    
    func check(answer:Int) -> Bool {
        return answers[answer].isCorrect
    }
    
}
