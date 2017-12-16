//
//  Answer.swift
//  Quiz
//
//  Created by UCode on 12/15/17.
//  Copyright © 2017 Preston. All rights reserved.
//

import Foundation

class Answer {
    
    var text:      String
    var isCorrect: Bool
    
    init(text: String, isCorrect: Bool) {
        self.text      = text
        self.isCorrect = isCorrect
    }
    
}
