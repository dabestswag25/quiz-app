//
//  QuizViewController.swift
//  Quiz
//
//  Created by UCode on 12/15/17.
//  Copyright © 2017 Preston. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    let quiz = Quiz(questions: [
        Question(text: "What happens when you click \"all of the above\"?", answers: [
            Answer(text: "Nothing", isCorrect: false),
            Answer(text: "You get the question right.", isCorrect: false),
            Answer(text: "You get the question wrong.", isCorrect: true),
            Answer(text: "all of the above", isCorrect: false)
        ]),
        Question(text: "Will the rest of the questions actually be serious?", answers: [
            Answer(text: "Yes", isCorrect: false),
            Answer(text: "No", isCorrect: true),
            Answer(text: "This isn't a math quiz.", isCorrect: false),
            Answer(text: "Maybe", isCorrect: false)
        ]),
        Question(text: "In which structures of the thylakoid membrane does light energy enter?", answers: [
            Answer(text: "Reaction Center", isCorrect: false),
            Answer(text: "Photosystem I", isCorrect: false),
            Answer(text: "Photosystem II", isCorrect: false),
            Answer(text: "Photosystem I and II", isCorrect: true)
        ]),
        Question(text: "What are the products of cellular respiration?", answers: [
            Answer(text: "Glucose and Oxygen", isCorrect: false),
            Answer(text: "Oxygen, Carbon Dioxide, Water", isCorrect: false),
            Answer(text: "Glucose, ATP, Water", isCorrect: false),
            Answer(text: "Carbon Dioxide, Water, ATP", isCorrect: true)
        ]),
        Question(text: "What is the first step of mitosis?", answers: [
            Answer(text: "Telophase", isCorrect: false),
            Answer(text: "Metaphase", isCorrect: false),
            Answer(text: "Prophase", isCorrect: true),
            Answer(text: "Anaphase", isCorrect: false)
        ]),
        Question(text: "Which organelle is the site of photosynthesis in plant cells?", answers: [
            Answer(text: "Chloroplast", isCorrect: true),
            Answer(text: "Mitochondria", isCorrect: false),
            Answer(text: "Nucleus", isCorrect: false),
            Answer(text: "Golgi Apparatus", isCorrect: false)
        ]),
        Question(text: "What does RuBP stand for?", answers: [
            Answer(text: "I don't know", isCorrect: false),
            Answer(text: "Who knows", isCorrect: false),
            Answer(text: "Ribulose Biphosphate", isCorrect: true),
            Answer(text: "All of the above", isCorrect: false)
        ]),
        Question(text: "What happens when adenosine diphosphate and a phosphate group combine?", answers: [
            Answer(text: "ADP is created", isCorrect: false),
            Answer(text: "ATP is created", isCorrect: true),
            Answer(text: "NADH is created", isCorrect: false),
            Answer(text: "These questions are horrible.", isCorrect: false)
        ]),
        Question(text: "What happens when NADH is oxidized?", answers: [
            Answer(text: "NADH is converted to ATP.", isCorrect: false),
            Answer(text: "NADH becomes NAD+.", isCorrect: true),
            Answer(text: "NADH is removed.", isCorrect: false),
            Answer(text: "The Krebs cycle occurs.", isCorrect: false)
        ]),
        Question(text: "Why was this quiz titled \"Math Quiz\"?", answers: [
            Answer(text: "It was a lie.", isCorrect: true),
            Answer(text: "Question 5 was about math.", isCorrect: false),
            Answer(text: "Question 7 was about math.", isCorrect: false),
            Answer(text: "Biology is math.", isCorrect: false)
        ])
    ])
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerButton0: UIButton!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    
    func show(question:Question) {
        questionLabel.text = question.text
        answerButton0.setTitle(question.answers[0].text, for: .normal)
        answerButton1.setTitle(question.answers[1].text, for: .normal)
        answerButton2.setTitle(question.answers[2].text, for: .normal)
        answerButton3.setTitle(question.answers[3].text, for: .normal)
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if quiz.currentQuestion.answers[sender.tag].isCorrect {
            quiz.increaseScore()
        }
        if quiz.currentQuestionNumber < quiz.questions.count {
            quiz.next()
            show(question: quiz.currentQuestion)
        }
        else {
            performSegue(withIdentifier: "Show Results", sender: self)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        show(question: quiz.currentQuestion)
    }

    
    
    
}

