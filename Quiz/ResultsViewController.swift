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
    
    func showResults() {
        scoreLabel.text = "\(quiz.score)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        showResults()
        
    }

}
