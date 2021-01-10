//
//  QuestionViewController.swift
//  CodeAcademyApp
//
//  Created by Arnas Sleivys on 2020-12-28.
//

import UIKit

class QuestionViewController: UIViewController {

    // MARK: - UI Components

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    @IBOutlet weak var thirdChoiceButton: UIButton!
    @IBOutlet weak var fourthChoiceButton: UIButton!
    
    var currentQuestion: Question?
    var questionIndex = 0
    

    // MARK: - Button actions

    @IBAction func choiceButtonTapped(_ sender: UIButton) {
        
        nextQuestion()
//        switch sender {
//        case firstChoiceButton:
//            <#code#>
//        case secondChoiceButton:
//        case thirdChoiceButton:
//        case fourthChoiceButton:
//        default:
//            return
//        }
        
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        startQuiz()
    }
    
    
}

//MARK:- Helper functions

extension QuestionViewController {
    
    func startQuiz() {
        
        if let firstQuestion = QuizManager.questions.first {
            questionLabel.text = firstQuestion.question
            firstChoiceButton.setTitle(firstQuestion.firstChoice, for: .normal)
            secondChoiceButton.setTitle(firstQuestion.secondChoice, for: .normal)
            thirdChoiceButton.setTitle(firstQuestion.thirdChoice, for: .normal)
            fourthChoiceButton.setTitle(firstQuestion.fourthChoice, for: .normal)
            
        }
  
    }
    
    func nextQuestion() {
        questionIndex += 1
        if questionIndex < QuizManager.questions.count {
            let firstQuestion = QuizManager.questions[questionIndex]
            questionLabel.text = firstQuestion.question
            firstChoiceButton.setTitle(firstQuestion.firstChoice, for: .normal)
            secondChoiceButton.setTitle(firstQuestion.secondChoice, for: .normal)
            thirdChoiceButton.setTitle(firstQuestion.thirdChoice, for: .normal)
            fourthChoiceButton.setTitle(firstQuestion.fourthChoice, for: .normal)
        } else {
            dismiss(animated: true, completion: nil)
        }
        
    }
}


