//
//  QuizViewController.swift
//  Quiz//
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
        Question(text: "What phase of mitosis involves the separation of sister chromatids?", answers: [
            Answer(text: "Prophase", isCorrect: false),
            Answer(text: "Metaphase", isCorrect: false),
            Answer(text: "Telophase", isCorrect: false),
            Answer(text: "Anaphase", isCorrect: true)
        ]),
        Question(text: "Which base is only found in DNA?", answers: [
            Answer(text: "Adenine", isCorrect: false),
            Answer(text: "Guanine", isCorrect: false),
            Answer(text: "Thymine", isCorrect: true),
            Answer(text: "Uracil", isCorrect: false)
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
        Question(text: "Which question was about RuBP?", answers: [
            Answer(text: "Question 6", isCorrect: false),
            Answer(text: "Question 7", isCorrect: true),
            Answer(text: "Question 8", isCorrect: false),
            Answer(text: "Question 314", isCorrect: false),
        ]),
        Question(text: "What is the genotype RR referred to as?", answers: [
            Answer(text: "Homozygous Dominant", isCorrect: true),
            Answer(text: "Homozygous Recessive", isCorrect: false),
            Answer(text: "Heterozygous", isCorrect: false),
            Answer(text: "What does this have to do with math?", isCorrect: false),
        ]),
        Question(text: "Which of the following RNA molecules carry an anticodon?", answers: [
            Answer(text: "ribozymes", isCorrect: false),
            Answer(text: "mRNA", isCorrect: false),
            Answer(text: "rRNA", isCorrect: false),
            Answer(text: "tRNA", isCorrect: true),
        ]),
        Question(text: "Which one?", answers: [
            Answer(text: "This one.", isCorrect: false),
            Answer(text: "This one.", isCorrect: false),
            Answer(text: "That one.", isCorrect: true),
            Answer(text: "This one.", isCorrect: false),
            ]),
        Question(text: "Who established the theory of natural selection?", answers: [
            Answer(text: "Gregor Mendel", isCorrect: false),
            Answer(text: "Francis Crick", isCorrect: false),
            Answer(text: "Charles Darwin", isCorrect: true),
            Answer(text: "Preston Tran", isCorrect: false),
        ]),
        Question(text: "Why was this quiz titled \"Math Quiz\"?", answers: [
            Answer(text: "It was a lie.", isCorrect: true),
            Answer(text: "Question 5 was about math.", isCorrect: false),
            Answer(text: "Question 7 was about math.", isCorrect: false),
            Answer(text: "Biology is math.", isCorrect: false)
        ])
    ])
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
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
    
        questionNumberLabel.text = "\(quiz.currentQuestionNumber) of \(quiz.questions.count)"
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultsViewController = segue.destination as! ResultsViewController
        resultsViewController.quiz = quiz
        
    }

    @IBAction func unwindSegueToQuizViewController(segue: UIStoryboardSegue) {
        quiz.reset()
        show(question: quiz.currentQuestion)
    }
    
    
}

