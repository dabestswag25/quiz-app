//
//  ResultsViewController.swift
//  Quiz
//
//  Created by UCode on 1/5/18.
//  Copyright © 2018 Preston. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var quiz: Quiz!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var feedbackLabel: UILabel!
    
    func showResults() {
        scoreLabel.text = "\(quiz.score)/\(quiz.questions.count)"
        
        if(quiz.score == 15)
        {
            feedbackLabel.text = "Wow! A perfect score!"
        }
        if(quiz.score == 14)
        {
            feedbackLabel.text = "Truly amazing!"
        }
        if(quiz.score == 13)
        {
            feedbackLabel.text = "Triskaidekaphobia."
        }
        if(quiz.score == 12)
        {
            feedbackLabel.text = "Excellent!"
        }
        if(quiz.score == 11)
        {
            feedbackLabel.text = "Great job!"
        }
        if(quiz.score == 10)
        {
            feedbackLabel.text = "Nice!"
        }
        else if(quiz.score == 9)
        {
            feedbackLabel.text = "Pretty good!"
        }
        else if(quiz.score == 8)
        {
            feedbackLabel.text = "Not bad!"
        }
        else if(quiz.score == 7)
        {
            feedbackLabel.text = "Good, I guess."
        }
        else if(quiz.score == 6)
        {
            feedbackLabel.text = "You could do better."
        }
        else if(quiz.score == 5)
        {
            feedbackLabel.text = "Try harder."
        }
        else if(quiz.score == 4)
        {
            feedbackLabel.text = "I've seen better."
        }
        else if(quiz.score == 3)
        {
            feedbackLabel.text = "Oof."
        }
        else if(quiz.score == 2)
        {
            feedbackLabel.text = "That was disappointing."
        }
        else if(quiz.score == 1)
        {
            feedbackLabel.text = "You failed. Get good."
        }
        else if(quiz.score == 0)
        {
            feedbackLabel.text = "Do you know what a quiz is?"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        showResults()
        
    }

}
